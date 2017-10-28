-- select语句
-- 用于从数据库中选取数据
-- 语法
select column_name,column_name from tabel_name;

-- 从table_name中查询所有的数据
select * from tabel_name;

-- 从table_name中查询字段id,username,password
select id,username,password from tabel_name;

----------------------

-- select distinct语句
-- 在表中，一个列可能会包含多个重复值，有时您也许希望仅仅列出不同（distinct）的值。
-- distinct关键字用于返回唯一不同的值
-- 语法
select distinct column_name,column_name from tabel_name;

----------------------

-- where子句
-- where子句用于提取那些满足指定标准的记录。
-- 语法
select column_name,column_name from tabel_name where column_name operator value;
-- 解释：operator可以是：=等于; <>或!=不等于; >大于; <小于; >=大于等于; <=小于等于; between在某个范围; like搜索某种模式; in指定针对某个列的多个可能值


-- eg:

-- Where 子句
-- 搜索 empno 等于 7900 的数据：
Select * from emp where empno=7900;

-- Where +条件（筛选行）
-- 条件：列，比较运算符，值
-- 比较运算符包涵：= > < >= ,<=, !=,<> 表示（不等于）
Select * from emp where ename='SMITH';

-- 例子中的 SMITH 用单引号引起来，表示是字符串，字符串要区分大小写。
-- 逻辑运算
-- And:与 同时满足两个条件的值。
Select * from emp where sal > 2000 and sal < 3000;

-- 查询 EMP 表中 SAL 列中大于 2000 小于 3000 的值。
-- Or:或 满足其中一个条件的值
Select * from emp where sal > 2000 or comm > 500;

-- 查询 emp 表中 SAL 大于 2000 或 COMM 大于500的值。
-- Not:非 满足不包涵该条件的值。
select * from emp where not sal > 1500;

-- 查询EMP表中SAL小于1500的值。
-- 逻辑运算的优先级：() not and or
-- 特殊条件
-- 1.空值判断： is null
Select * from emp where comm is null;


-- 查询 emp 表中 comm 列中的空值。
-- 2.between and (在 之间的值)
Select * from emp where sal between 1500 and 3000;

-- 查询 emp 表中 SAL 列中大于 1500 的小于 3000 的值。
-- 注意：1500 为下限，3000 为上限，下限在前，上限在后，查询的范围包涵有上下限的值。
-- 3.In查询 EMP 表 SAL 列中等于 5000，3000，1500 的值。
Select * from emp where sal in (5000,3000,1500);


-- 4.like
-- Like模糊查询
Select * from emp where ename like 'M%';

-- 查询 EMP 表中 Ename 列中有 M 的值，M 为要查询内容中的模糊信息。
--  % 表示多个字值，_ 下划线表示一个字符；
--  M% : 为能配符，正则表达式，表示的意思为模糊查询信息为 M 开头的。
--  %M% : 表示查询包含M的所有内容。
--  %M_ : 表示查询以M在倒数第二位的所有内容。

----------------
-- and & or
-- 查询table_name中的id=1并且name=sifu的数据
select * from tabel_name where id=1 and name=sifu;

-- 查询table_name中的contry='CN'或者country='USA'
select * from tabel_name where country='CN' or country='USA';

-- and与or结合使用
-- 查询table那么中age>15并且country='CN'或者'USA'的数据
select * from tabel_name where age>15 and(country='CN' or country='USA');


--------------------------

-- order by关键字
-- ORDER BY 关键字用于对结果集按照一个列或者多个列进行排序。
-- ORDER BY 关键字默认按照升序对记录进行排序。如果需要按照降序对记录进行排序，您可以使用 DESC 关键字
select column_name,column_name from tabel_name order by column_name,column_name ASC|DESC
-- 解释：ASC升序，DESC降序

-------------------------
