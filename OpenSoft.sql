SELECT MAX(value) FROM salary WHERE value NOT IN (SELECT Max(value) FROM salary) and employee_id = 5 and year(date) =2022;




SELECT MAX(value) From salary WHERE value < (SELECT Max(value) FROM salary)  and employee_id = 5 and year(date)=2022;




select a.id, a.title, color_table.color, price_table.price, installment_plan_table.installment_plan  from advertisements a 
join 

(select ap.advert_id, ap.value color from advert_params ap
join params p on p.id = ap.param_id
where  p.key = 'color' and ap.value = 'черный') color_table

on color_table.advert_id=a.id

join
(select ap.advert_id, ap.value price from advert_params ap
join params p on p.id = ap.param_id 
where p.key = 'price' and CAST(REGEXP_REPLACE(COALESCE(ap.value ,'0'), '[^0-9]+', '0') AS INTEGER) between 5000 and 15000) price_table

on price_table.advert_id=a.id

join
(select ap.advert_id, ap.value installment_plan from advert_params ap
join params p on p.id = ap.param_id 
where p.key = 'installment_plan' and ap.value = 'да') installment_plan_table
on installment_plan_table.advert_id = a.id
