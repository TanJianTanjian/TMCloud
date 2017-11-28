# 此为初始化数据库mysql镜像
FROM mysql:5.7

#设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#将所需文件放到容器中
COPY setup.sh /mysql/setup.sh
COPY db.sql /mysql/db.sql
COPY privileges.sql /mysql/privileges.sql

#设置容器启动时执行的命令
CMD ["sh", "/mysql/setup.sh","&>/dev/null"]