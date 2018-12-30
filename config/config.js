const config = {
  db: {
    dev: {
      host: 'localhost',
      user: 'root',
      password: 'root',
      database: 'test',
      multipleStatements: true,
      waitForConnections: true,
      connectionLimit: 10,
      queueLimit: 0 // 0表示无限制
    }
  }
}

module.exports = config;