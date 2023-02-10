# Homeownership Vs. last payment date stats

select project.finance_1.home_ownership,project.finance_2.last_pymnt_d,project.finance_2.last_pymnt_amnt ,count(project.finance_2.last_pymnt_d)
from project.finance_2
inner join project.finance_1
on project.finance_1.id=project.finance_2.id
group by project.finance_1.home_ownership,
project.finance_2.last_pymnt_d;