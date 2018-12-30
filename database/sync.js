const mysql = require('mysql2');
const path = require('path');
var fs = require('fs')
const argv = require('minimist')(process.argv.slice(2));

// 需要同步或mock的表名，默认全量同步或mock；
// 例：npm run migrate -- -t user -m
const tableName = argv.table || argv.t || '';
const needMock = argv.mock || argv.m || false;

// 建立连接
const env = process.env.NODE_ENV || 'dev';
const dbConfig = require(path.join(__dirname, '..', 'config', 'config.js'))['db'][env];
const pool = mysql.createPool(dbConfig);

// 同步表结构
function sync() {
  return new Promise((resolve, reject) => {
    const files = getFiles('schemas');
    let syncTasks = [];
    files.forEach(file => {
      // 读取 schema
      const sql = fs.readFileSync(path.join(__dirname, 'schemas', file), 'utf8');
      syncTasks.push(
        new Promise((resolve, reject) => {
          // 执行sql
          pool.query(sql, (error, results, field) => {
            if (error) {
              reject();
              throw error;
            }
            console.log(`${file.split('.')[0]} 表已创建`);
            resolve();
          });
        })
      );
    });

    // sync操作全部完成
    Promise.all(syncTasks).then(() => {
      resolve();
    })
  });
}

// mock 数据
function mock() {
  const files = getFiles('mocks');
  files.forEach(file => {
    // 读取 schema
    const sql = fs.readFileSync(path.join(__dirname, 'mocks', file), 'utf8');
    // 执行sql
    pool.query(sql, (error, results, field) => {
      if (error) throw error;
      console.log(`${file.split('.')[0]} 表已生成mock数据`);
    });
  });
}

// 获取目录内所有文件
function getFiles(dir) {
  const files = fs
    .readdirSync(path.join(__dirname, dir))
    .filter(function (file) {
      if (tableName) {
        return file === tableName + '.sql';
      }
      return file;
    })

  return files;
}

// sync 并 mock 数据
sync().then(() => {
  needMock && mock();
});
