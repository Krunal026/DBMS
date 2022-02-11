select*from product

DECLARE 
    @product_name2 VARCHAR(MAX), 
    @list_price2   DECIMAL;

DECLARE cursor_product2 CURSOR
FOR SELECT 
        prodname, 
        price
    FROM 
        product;

OPEN cursor_product2;

FETCH NEXT FROM cursor_product2 INTO 
    @product_name2, 
    @list_price2;
PRINT @product_name2 + CAST(@list_price2 AS varchar);
WHILE @@FETCH_STATUS = 0
    BEGIN
       
        FETCH NEXT FROM cursor_product2 INTO 
            @product_name2, 
            @list_price2;
            
          PRINT @product_name2 + CAST(@list_price2 AS varchar);
    END;

CLOSE cursor_product2;

DEALLOCATE cursor_product2;
