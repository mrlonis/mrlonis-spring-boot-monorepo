SELECT *
FROM CUSTOMER AS C
WHERE NOT EXISTS
        (SELECT *
         FROM SALES_ORDER AS SA
         WHERE C.ID = SA.CUSTOMER_ID)