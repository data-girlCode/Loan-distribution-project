-- Loan Distribution by Term 
SELECT term,COUNT(*) AS loan_distribution
FROM raqib
GROUP BY 1
ORDER BY 1 Asc
