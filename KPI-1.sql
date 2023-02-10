# Yearwise loan amount stats
Select * from project.finance_1;
Select year(str_to_date(issue_d,'%b-%y'))issue_year,sum(loan_amnt)
from project.finance_1
group by (issue_year)
order by(issue_year);