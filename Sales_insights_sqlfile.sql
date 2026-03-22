USE sales;

/* Show all the Customers records */
SELECT * FROM customers;

/* Show total numbers of customers */
SELECT COUNT(*) FROM customers;

/* Show transactios for chennai market (market code for chennai is Mark001) */
SELECT * FROM transactions
WHERE market_code = 'Mark001';

/* Show the distinct products codes that were sold in chennai */
SELECT DISTINCT product_code FROM transactions
where market_code = 'Mark001';

/* Show transaction where in currency US dollers */
SELECT * FROM transactions
WHERE currency = 'USD';

/* Show transactions in 2020 join by date table */
SELECT * FROM transactions;
SELECT * FROM DATE;

SELECT TRANSACTIONS.*, DATE.* FROM transactions
INNER JOIN date ON TRANSACTIONS.order_date = DATE.date
WHERE DATE.year = 2020 AND TRANSACTIONS.currency = 'INR\r' or TRANSACTIONS.currency = 'USD\r';

/* Show total revenue in year 2020 */
SELECT SUM(transactions.sales_amount) FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020 AND transactions.currency = 'INR\r'  or transactions.currency = 'USD\r';

/* Show total revenue in year 2020 January Month */
SELECT SUM(transactions.sales_amount) FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020 AND date.month_name = "January" and (transactions.currency = 'INR\r'  or transactions.currency = 'USD\r');

/* Show total revenue in year 2020 in chennai */
SELECT SUM(transactions.sales_amount) FROM transactions
INNER JOIN date ON transactions.order_date = date.date
WHERE date.year = 2020 AND transactions.market_code = 'Mark001';

select count(*) from transactions 
where currency ='INR\r';

select count(*) from transactions 
where currency ='INR';

select count(*) from transactions 
where currency ='USD\r';

select count(*) from transactions 
where currency ='USD';


