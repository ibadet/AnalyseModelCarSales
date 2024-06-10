   WITH topFiveCustomers 
AS (
SELECT o.customerNumber, 
      SUM(od.quantityOrdered*od.priceEach -   p.buyPrice) as profit
  FROM orderdetails od
  JOIN orders o
    ON od.orderNumber=o.orderNumber
  JOIN products p
    ON od.productCode=p.productCode
 GROUP BY o.customerNumber
 ORDER BY profit DESC
 LIMIT 5
)

SELECT c.contactLastName, c.contactFirstName, c.city, c.country
FROM customers c
JOIN topFiveCustomers tc
ON c.customerNumber=tc.customerNumber