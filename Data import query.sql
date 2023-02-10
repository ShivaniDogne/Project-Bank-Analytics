 use project;
select * from finance_1;
show variables like "secure_file_priv";
set global local_infile=on;
load data  infile   'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Finance_1.csv'

into table finance_1
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\n'
ignore 1 rows;