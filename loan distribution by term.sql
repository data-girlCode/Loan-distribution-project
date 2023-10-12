-- Loan Distribution by Term 
SELECT term,COUNT(*) AS loan_distribution
FROM loan
GROUP BY 1
ORDER BY 1 Asc

-- Average Borrower APR by Employment Status
SELECT employmentstatus, AVG(borrowerapr) AS avg_borrower_apr
FROM loan 
GROUP BY 1

-- Monthly Income Distribution for Homeowners vs. Non-Homeowners
SELECT isborrowerhomeowner, statedmonthlyincome, COUNT(*) countofborrowers
FROM loan
GROUP BY 1,2

-- Loan with highest original amount
SELECT loanoriginalamount
FROM loan
WHERE loanoriginalamount = (SELECT MAX(loanoriginalamount)
							FROM raqib)

--Top 5 occupation by average stated monthly income
SELECT occupation, AVG(statedmonthlyincome) AS Avgmonthlyincome
FROM loan
GROUP BY 1
ORDER BY Avgmonthlyincome DESC
LIMIT 5

-- Loan Status with Percentage Breakdown
SELECT loanstatus, COUNT(*) AS loancount, (COUNT(*) * 100 / (SELECT COUNT(*) FROM loan)) AS percentage
FROM loan
GROUP BY 1
