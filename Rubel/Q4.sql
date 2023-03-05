USE PUST

CREATE TRIGGER trig
ON Transactions
FOR INSERT AS
BEGIN
    DECLARE @cusl_id CHAR(6),@tran_type CHAR(1)
	SELECT @cusl_id=cusl_id,@tran_type=tran_type FROM INSERTED
	IF @tran_type='S'
        UPDATE CustomerAndSuppliers SET sales_amnt=sales_amnt*1.1 WHERE cusl_id=@cusl_id
	ELSE
	    UPDATE CustomerAndSuppliers SET proc_amnt=proc_amnt*1.1 WHERE cusl_id=@cusl_id
END

DROP TRIGGER trig

INSERT Transactions
(tran_id,item_id,cusl_id,tran_type,tran_quantity) VALUES('T000000099','P00001','C00001','S',5000)

SELECT * FROM Transactions

SELECT * FROM CustomerAndSuppliers