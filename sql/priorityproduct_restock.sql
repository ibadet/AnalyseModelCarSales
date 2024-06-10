 WITH 
low_stock_table AS(
 SELECT p.productCode, ROUND( (SELECT SUM(od.quantityOrdered) 
     FROM   orderdetails od 
 WHERE od.productCode=p.productCode
   GROUP BY od.productCode) *1.0 /p.quantityInStock,2) AS low_stock
   FROM products p
  GROUP BY p.productCode
  ORDER BY low_stock  DESC
   LIMIT 10 
),

product_perf_table AS(
 SELECT productCode, SUM(quantityOrdered*priceEach) AS product_perf
   FROM orderdetails
 GROUP BY productCode
 ORDER BY product_perf DESC
  LIMIT 10
)

SELECT productCode, 
       SUM(quantityOrdered * priceEach) AS prod_perf
  FROM orderdetails od
 WHERE productCode IN (SELECT productCode
                         FROM low_stock_table)
 GROUP BY productCode 
 ORDER BY prod_perf DESC
 LIMIT 10;