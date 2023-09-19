# Database Queries

Customer

| id  | name         | street        | cit         | state |
| :-- | :----------- | :------------ | :---------- | :---- |
| 1   | Martin Bros  | 406 Viking Rd | Cedar Falls | IO    |
| 2   | Martins Mart | 408 Viking Rd | Cedar Falls | IO    |

Sales_Order

| id  | customer_id | item_id | order_number        | quantity | amount |
| :-- | :---------- | :------ | :------------------ | :------- | :----- |
| 1   | 1           | 1       | B201901011135101231 | 1        | 20.00  |
| 2   | 1           | 2       | M201901021137103231 | 1        | 15.00  |

The tables above could have hundreds of thousands of rows. You have been tasked with retrieving some key data from these tables.

1. Find all Customers who do not have any Sales Orders
   1. Create a query using a LEFT JOIN in the query
   2. Create a query using a Subquery
2. Create a query to find the average price each Customer pays for each Item ordered
3. Create a query to add a new Sales Order with the following data
   - Amount : 50
   - Customer : 1
   - Quantity : 3
   - Sales Order : B201911210924551000
   - Item : 23
4. An error occurred mistakenly adding the item with id 2 to Sales Orders for the Martin Bros customer account. The mistake only occurred on Sales Orders with a prefix of 'M'. Create a query to delete instances of this item from Sales_Orders for the Martin Bros customer account.

## Solutions

[1.1](./Customers_With_No_Sales_Orders_Left_Join.sql)

[1.2](./Customers_With_No_Sales_Orders_Subquery_Not_In.sql)

[2](./Average_Price_Each_Customer_Pays_For_Each_Item_Ordered_No_Join.sql)

[3](./Add_Sales_Order.sql)

[4](./Delete_M_Order_Numbers_For_Martin_Bros_Customers.sql)
