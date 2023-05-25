select * from sales_data;

-- Gender count
select Gender, count(Gender) as Gender_Count from sales_data group by Gender;

-- Total Amount spent as per gender 
select Gender, count(Gender) as Gender_Count, sum(Amount) as Amount_Spent_Rupees from sales_data group by Gender order by Amount_spent_Rupees desc;
-- Females has purchase more and spent more than males

-- Age group count as per gender
select Gender, Age_Group, count(Age_Group) as AgeGroup_count from sales_data group by Age_Group, Gender order by Age_Group, AgeGroup_count; 

-- Total amount spent as per age group
select Age_Group, sum(Amount) as Amount_spent_rupees from sales_data group by Age_Group order by Amount_spent_rupees desc;

-- Total amount spent as per gender and age group
select Gender, Age_Group, sum(Amount) as Amount_spent_rupees from sales_data group by Age_Group, Gender order by Amount_spent_rupees desc;
-- Females betwenn the age group of 26-35 has spent the most amount

-- Total number of orders as per states also get top 10 states
select State, sum(Orders) as Total_orders from sales_data group by State order by Total_orders desc;
select State, sum(Orders) as Total_orders from sales_data group by State order by Total_orders desc limit 10;

-- total amount/sales from top 10 states
select State, sum(Amount) as AmountSpent_States from sales_data group by State order by 2 desc;
select State, sum(Amount) as AmountSpent_States from sales_data group by State order by 2 desc limit 10;

-- Amount spent on shopping based on marital status
select Marital_Status, sum(Amount) as Amount_Spent from sales_data group by Marital_Status order by 2 desc;

-- Total number of orders based on marital status
select Marital_Status, sum(Orders) as Total_Orders from sales_data group by Marital_Status order by  2 desc;

-- Total number of orders based on gender
select Gender, sum(Orders) as Total_Orders from sales_data group by Gender order by 2 desc;

-- Amount spent on shopping based on marital status and gender
select Gender, Marital_Status, sum(Amount) as Amount_Spent from sales_data group by Gender, Marital_Status order by 3  desc;

-- Total number of orders based on marital status and gender
select Gender, Marital_Status, sum(Orders) as Total_Orders from sales_data group by Gender, Marital_Status order by 3  desc;

-- total orders based on occupation
select Occupation, sum(Orders) as Total_Orders from sales_data group by Occupation order by 2 desc;

-- total orders based on occupation, gender
select Occupation,Gender, sum(Orders) as Total_Orders from sales_data group by Occupation, Gender order by 3 desc;

-- total orders based on occupation, marital status and gender
select Occupation,Gender, Marital_Status, sum(Orders) as Total_Orders from sales_data group by Occupation, Gender, Marital_Status order by 4 desc;

-- Amount spent based on occupation
select Occupation, sum(Amount) as Amount_Spent from sales_data group by Occupation order by 2 desc;



-- Amount spent based on occupation, gender
select Occupation,Gender, sum(Amount) as Amount_Spent from sales_data group by Occupation, Gender order by 3 desc;

-- Amount spent based on occupation, marital status and gender
select Occupation,Gender, Marital_Status, sum(Amount) as Amount_Spent from sales_data group by Occupation, Gender, Marital_Status order by 4 desc;

-- products that were sold the most
select Product_Category, count(Product_Category) as count from sales_data group by Product_Category order by count desc; 
select Product_Category, count(Product_Category) as count from sales_data group by Product_Category order by count desc limit 1; 

-- products and money spent on it 
select Product_Category, sum(Amount) as Amount_Spent from sales_data group by Product_Category order by 2 desc; 

select Gender, Marital_Status,Age_Group, Product_Category, count(Product_Category) as Product_Count,sum(Orders) as Order_Count, sum(Amount) as Amount_Spent 
	from sales_data group by Gender, Marital_Status,Age_Group, Product_Category order by Product_count desc,Order_Count, Amount_Spent desc ; 

select Gender, Marital_Status,Age_Group, Product_Category, State, count(Product_Category) as Product_Count,sum(Orders) as Order_Count, sum(Amount) as Amount_Spent 
	from sales_data group by Gender, Marital_Status,Age_Group, Product_Category, State order by Product_count desc,Order_Count, Amount_Spent desc; 
