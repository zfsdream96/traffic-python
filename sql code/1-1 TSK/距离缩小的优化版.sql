select 上车点编号,计数
from(
select (ceil((GETONLONGITUDE-103.932078)/0.00431198)*100+ ceil((GETONLATITUDE -30.543160)/0.0037921875)) as 上车点编号,
count(*) as 计数,
stddev(operationmil) as std
from ( select GETONLONGITUDE,GETONLATITUDE,operationmil
from (select *
from WK_OPERATIONINCOME20150401
union
select *
from WK_OPERATIONINCOME20150402
union
select *
from WK_OPERATIONINCOME20150403
union
select *
from WK_OPERATIONINCOME20150404
union
select *
from WK_OPERATIONINCOME20150405
union
select *
from WK_OPERATIONINCOME20150406
union
select *
from WK_OPERATIONINCOME20150407
union
select *
from WK_OPERATIONINCOME20150408
union
select *
from WK_OPERATIONINCOME20150409

)
where GETONLONGITUDE>=103.932078 and GETONLONGITUDE<=104.208045
and GETONLATITUDE>=30.543160 and GETONLATITUDE<=30.785860
and operationtime>0 and operationmil<75 and operationmil>1
)
group by ((ceil((GETONLONGITUDE-103.932078)/0.00431198)*100+ ceil((GETONLATITUDE -30.543160)/0.0037921875))))
where std<6;
