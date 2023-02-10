# State wise last_credit_pull_d wise loan status

Select project.finance_1.addr_state,
project.finance_2.last_credit_pull_d,sum(case
when loan_status='Fully Paid' then project.finance_1.loan_status else 1 end) as fully_paid,
sum(case
when loan_status='Charged Off' then project.finance_1.loan_status else 1 end) as Charged_Off
from project.finance_2
inner join project.finance_1
on project.finance_1.id= project.finance_2.id
group by project.finance_1.loan_status;