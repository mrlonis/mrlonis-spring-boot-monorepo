DELETE
FROM SALES_ORDER
WHERE CUSTOMER_ID = 1 -- Martin Bros customer_id
    AND ITEM_ID = 2
    AND ORDER_NUMBER LIKE 'M%';