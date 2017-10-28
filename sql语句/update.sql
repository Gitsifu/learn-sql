-- update语句用于更新表中的记录
-- 语法
update table_name set column1=value1,column2=value2,... where some_column=some_value;
 -- 注意：在更新记录是要格外小心，如果我们省略了where子句，那么table_name中所有的column改为value。
 -- 执行没有where子句的update要慎重，再慎重。