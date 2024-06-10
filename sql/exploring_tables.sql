
SELECT  'customers' as table_name,
         COUNT(*) AS number_of_attributes, 
        (SELECT COUNT(*) 
           FROM customers) AS number_of_rows 
  FROM pragma_table_info('customers')
  
UNION ALL

SELECT  'products' as table_name,
         COUNT(*) AS number_of_attributes, 
        (SELECT COUNT(*) 
           FROM products) AS number_of_rows 
  FROM pragma_table_info('products')
  
UNION ALL

SELECT  'productlines' as table_name,
         COUNT(*) AS number_of_attributes, 
        (SELECT COUNT(*) 
           FROM productlines) AS number_of_rows 
  FROM pragma_table_info('productlines')
  
UNION ALL

SELECT  'orders' as table_name,
         COUNT(*) AS number_of_attributes, 
        (SELECT COUNT(*) 
           FROM orders) AS number_of_rows 
  FROM pragma_table_info('orders')
  
UNION ALL

SELECT  'orderdetails' as table_name,
         COUNT(*) AS number_of_attributes, 
        (SELECT COUNT(*) 
           FROM orderdetails) AS number_of_rows 
  FROM pragma_table_info('orderdetails')
  
UNION ALL

SELECT  'payments' as table_name,
         COUNT(*) AS number_of_attributes, 
        (SELECT COUNT(*) 
           FROM payments) AS number_of_rows 
  FROM pragma_table_info('payments')
  
UNION ALL

SELECT  'employees' as table_name,
         COUNT(*) AS number_of_attributes, 
        (SELECT COUNT(*) 
           FROM employees) AS number_of_rows 
  FROM pragma_table_info('employees')
  
UNION ALL

SELECT  'offices' as table_name,
         COUNT(*) AS number_of_attributes, 
        (SELECT COUNT(*) 
           FROM offices) AS number_of_rows 
  FROM pragma_table_info('offices') ;