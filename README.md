# mill
### 使用：
- express
- mysql
- graphql
- redis
- jwt

### 不使用：
- ~~orm~~
- ~~eslint~~

### 功能：
- 身份验证

### 使用的库：

库名 | 作用
-- | --
minimist | 对象化命令行参数
mysql2 | mysql 的 nodejs客户端，相比 mysql 增加了对 promise 和 prepared语句 的支持


# 开发日记
- **mysql 为了支持 emoji 表情，需使用 `utf8mb4`**
> `create database test default charset utf8mb4 collate utf8mb4_unicode_ci`;

> charset是字符编码表，collate是表示字符大小的值的编码表

- **mysql 连接池和队列数量最佳设置为多少？**
> 经性能测试，连接池最佳数目为 10， 队列无限。即 mysql2 的默认配置

- **什么是 prepared语句？**
> 防止sql注入攻击： https://stackoverflow.com/questions/8263371/how-can-prepared-statements-protect-from-sql-injection-attacks

- **除了 require 时可以用相对路径，其它时候必须用 `path.join`, `path.resolve`, `__dirname`等**
> 执行代码的入口文件会变化：https://github.com/imsobear/blog/issues/48



# milestone
- [x] 初始化 express
- [x] 增加 mysql 和同步机制
- [ ] 增加 graphql
- [ ] 增加redis
- [ ] 增加身份验证功能


