-- delete语句
-- delete语句用于删除表中的记录。
-- 语法
delete from table_name where some_colkumn=some_value;
-- 注意：where子句规定哪条记录或者那些记录需要删除。如果您省略了where子句，所有的巨鹿都将被删除！


-- 您可以在不删除表的情况下，删除表中所有的行。这意味着表结构，属性，索引将保持不变：
delete from table_name;
或
delete * from table_name;
-- 注意：在删除记录时要格外小心！因为您不能重来！