# toatl payment for verified status vs non-verified status

select project.finance_1.verification_status,round(sum(total_pymnt),2)
from project.finance_2
inner join project.finance_1 on
project.finance_1.id=project.finance_2.id
group by project.finance_1.verification_status;