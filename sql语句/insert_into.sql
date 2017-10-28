-- insert into语句
-- INSERT INTO 语句用于向表中插入新记录。
-- 语法

-- INSERT INTO 语句可以有两种编写形式。

-- 第一种形式无需指定要插入数据的列名，只需提供被插入的值即可：
insert into table_name values(value1,value2,values3,...);
-- 第二种形式需要指定列名及被插入的值：
insert into table_name(column1,column2,column3,...) values(value1,value2,values3,...);
