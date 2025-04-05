--select * from bank_loan_data

--total loan applications
--select count(id) as total_loan_applications from bank_loan_data

--select count(id) as MTD_total_loan_applications from bank_loan_data
--where month(issue_date) = 12 and year(issue_date) = 2021

--select sum(loan_amount) as MTD_total_funded_amount from bank_loan_data
--where month(issue_date) = 12

--select sum(total_payment) as total_amount_received from bank_loan_data

--select sum(total_payment) as total_amount_received from bank_loan_data
--where month(issue_date) = 12

--select avg(int_rate)*100 as average_interest_rate from bank_loan_data

--select round(avg(int_rate),4)*100 as average_interest_rate from bank_loan_data

--select avg(int_rate)*100 as average_interest_rate from bank_loan_data
--where month(issue_date) = 12

--select avg(dti)*100 as avg_dti from bank_loan_data

--select loan_status from bank_loan_data

/* select 
     (count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100)
    /
    count(id) as good_load_percentage
from bank_loan_data */

/*select count(id) as good_loan_applications from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'*/

/*select sum(loan_amount) as good_loan_funded from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'*/

/*select sum(total_payment) as good_loan_paid from bank_loan_data
where loan_status = 'Fully Paid' or loan_status = 'Current'*/

--same queries for bad loan chnage where loan_status to Charged Off

/*SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status*/

/*SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status*/

/*SELECT 
	MONTH(issue_date) AS Month_number, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)*/

/* SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state */

/*SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term*/

/*SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length*/

/*SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose*/

/*SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership*/

/*SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose*/








