- 用pg_dump导出数据库到init.sql；
- 在目录下运行`docker build -t wzy1935/ratings_db .` 这样会创建出一个叫ratings_db的image
- 运行` docker run -d -p 5433:5432 --name ratings_db -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=CD534Fb512*1efg1gB*f-C6gcg46C3eB wzy1935/ratings_db` 将容器挂载到本地5433端口，这里设置的环境变量会变成数据库的密码和用户名。
- 此时该数据库可在本地5433端口railway访问到，例如，后端环境变量应设置为`spring.datasource.url=jdbc:postgresql://localhost:5433/railway`

