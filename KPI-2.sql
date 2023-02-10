# Grade and sub grade wise revol_bal

select project.finance_1.Grade,project.finance_1.sub_grade,sum(project.finance_2.revol_bal)
from project.finance_2
inner join project.finance_1
on project.finance_1.id=project.finance_2.id
group by project.finance_1.sub_grade
order by project. finance_1.sub_grade asc;