WITH avg_customer_profits
AS(
SELECT o.customerNumber, 
      SUM(od.quantityOrdered*(od.priceEach - p.buyPrice)) as revenue
  FROM orderdetails od
  JOIN orders o
    ON od.orderNumber=o.orderNumber
  JOIN products p
    ON od.productCode=p.productCode
 GROUP BY o.customerNumber
)

SELECT avg(revenue)
FROM avg_customer_profits