CREATE TABLE IF NOT EXISTS with_bill_data (
    Entry_Date DATE,
    Category VARCHAR(50),
    Customer_Name VARCHAR(255),
    Gross_Wt NUMERIC(18, 3),
    Purity NUMERIC(18, 3),
    Pure_Wt NUMERIC(18, 3),
    MC_Rate NUMERIC(18, 2),
    Making_Amt NUMERIC(18, 2),
    S_Gross_WT NUMERIC(18, 3),
    SR_Gross_WT NUMERIC(18, 3),
    SP_Gross_WT NUMERIC(18, 3),
    SR_Pure_Gross_WT NUMERIC(18, 3),
    S_Making_Amt_Inc_Tax NUMERIC(18, 2),
    SR_Making_Amt_Inc_Tax NUMERIC(18, 2),
    Purch_Gross_WT NUMERIC(18, 3),
    MP_Gross_WT NUMERIC(18, 3),
    Pure_Purch_Gross_WT NUMERIC(18, 3),
    MP_Pure_Gross_WT NUMERIC(18, 3),
    P_Making_Amt_Inc_Tax NUMERIC(18, 2),
    MP_Making_Amt NUMERIC(18, 2),
    MAKING_CASH_RCVD NUMERIC(18, 2),
    MAKING_CHQ_RCVD NUMERIC(18, 2),
    PUR_MAK_CASH_PMT NUMERIC(18, 2),
    PUR_MAK_CHQ_PMT NUMERIC(18, 2),
	Old_Balance_Debit_Or_Credit NUMERIC(18, 2),
	Old_Gold_Debit_Or_Credit NUMERIC(18, 3)
);
-- Purana data delete karne ke liye taaki duplicate na ho
TRUNCATE TABLE with_bill_data;

-- Naya cleaned CSV data load karne ke liye
COPY with_bill_data
FROM 'C:\SQLData\WITH_BILL.csv'
DELIMITER ','
CSV HEADER
ENCODING 'UTF8';

SELECT*FROM with_bill_data;