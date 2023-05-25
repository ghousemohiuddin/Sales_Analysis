select * from sales_data;

alter table sales_data drop column Status,
					   drop column unnamed1;
                       
alter table sales_data rename column `Age Group` to Age_Group; 
-- To select a column name with spaces, use the back tick symbol with column name. The symbol is ( ` `). 
-- Back tick is displayed in the keyboard below the tilde operator ( ~).

describe sales_data;

-- Mysql has automatically omitted the rows with blank cells and converted the amount column datatype to int.


