-- Loan Distribution by Term 
SELECT term,COUNT(*) AS loan_distribution
FROM raqib
GROUP BY 1
ORDER BY 1 Asc

-- Average Borrower APR by Employment Status
SELECT employmentstatus, AVG(borrowerapr) AS avg_borrower_apr
FROM raqib 
GROUP BY 1

-- Monthly Income Distribution for Homeowners vs. Non-Homeowners
SELECT isborrowerhomeowner, statedmonthlyincome, COUNT(*) countofborrowers
FROM raqib
GROUP BY 1,2

-- Loan with highest original amount
SELECT loanoriginalamount
FROM raqib
WHERE loanoriginalamount = (SELECT MAX(loanoriginalamount)
							FROM raqib)

--Top 5 occupation by average stated monthly income
SELECT occupation, AVG(statedmonthlyincome) AS Avgmonthlyincome
FROM raqib
GROUP BY 1
ORDER BY Avgmonthlyincome DESC
LIMIT 5
