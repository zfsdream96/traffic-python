select 日期1,日期2,上车点编号，下车点编号，计数,operationmil,operationamount,operationtime
from (select 日期1,日期2,上车点编号,下车点编号,count(*) as 计数,operationmil,operationamount,operationtime
from 
(select vehiclenum,to_char(PAIDTIME,'YYYY-MM-DD')as 日期1,to_char(PAIDTIME,'hh24:mi:ss')as 日期2,
GETONLONGITUDE as 上车点经度, 
GETONLATITUDE as 上车点纬度 , 
GETOFFLONGITUDE as 下车点经度,
GETOFFLATITUDE as 下车点纬度,
ceil((GETONLONGITUDE-103.932078)/0.00431198)*100+ ceil((GETONLATITUDE -30.543160)/0.0037921875) as 上车点编号, 
ceil((GETOFFLONGITUDE-103.932078)/0.00431198)*100+ ceil((GETOFFLATITUDE -30.543160)/0.0037921875) as 下车点编号,
operationmil,operationamount,operationtime

from (
select *
from(select *
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
union
select *
from WK_OPERATIONINCOME20150410
union
select *
from WK_OPERATIONINCOME20150411
union
select *
from WK_OPERATIONINCOME20150412
union
select *
from WK_OPERATIONINCOME20150413
union
select *
from WK_OPERATIONINCOME20150414
union
select *
from WK_OPERATIONINCOME20150415
union
select *
from WK_OPERATIONINCOME20150416
union
select *
from WK_OPERATIONINCOME20150417
union
select *
from WK_OPERATIONINCOME20150418
union
select *
from WK_OPERATIONINCOME20150419
union
select *
from WK_OPERATIONINCOME20150420
union
select *
from WK_OPERATIONINCOME20150421
union
select *
from WK_OPERATIONINCOME20150422
union
select *
from WK_OPERATIONINCOME20150423
union
select *
from WK_OPERATIONINCOME20150424
union
select *
from WK_OPERATIONINCOME20150425
union
select *
from WK_OPERATIONINCOME20150426
union
select *
from WK_OPERATIONINCOME20150427
union
select *
from WK_OPERATIONINCOME20150428
union
select *
from WK_OPERATIONINCOME20150429
union
select *
from WK_OPERATIONINCOME20150430
union
select *
from WK_OPERATIONINCOME20150501
union
select *
from WK_OPERATIONINCOME20150502
union
select *
from WK_OPERATIONINCOME20150503
union
select *
from WK_OPERATIONINCOME20150504
union
select *
from WK_OPERATIONINCOME20150505
union
select *
from WK_OPERATIONINCOME20150506
union
select *
from WK_OPERATIONINCOME20150507
union
select *
from WK_OPERATIONINCOME20150508
union
select *
from WK_OPERATIONINCOME20150509
union
select *
from WK_OPERATIONINCOME20150510
union
select *
from WK_OPERATIONINCOME20150511
union
select *
from WK_OPERATIONINCOME20150512
union
select *
from WK_OPERATIONINCOME20150513
union
select *
from WK_OPERATIONINCOME20150514
union
select *
from WK_OPERATIONINCOME20150515
union
select *
from WK_OPERATIONINCOME20150516
union
select *
from WK_OPERATIONINCOME20150517
union
select *
from WK_OPERATIONINCOME20150518
union
select *
from WK_OPERATIONINCOME20150519
union
select *
from WK_OPERATIONINCOME20150520
union
select *
from WK_OPERATIONINCOME20150522
union
select *
from WK_OPERATIONINCOME20150523
union
select *
from WK_OPERATIONINCOME20150521
union
select *
from WK_OPERATIONINCOME20150524
union
select *
from WK_OPERATIONINCOME20150525
union
select *
from WK_OPERATIONINCOME20150526
union
select *
from WK_OPERATIONINCOME20150527
union
select *
from WK_OPERATIONINCOME20150528
union
select *
from WK_OPERATIONINCOME20150529
union
select *
from WK_OPERATIONINCOME20150530
union
select *
from WK_OPERATIONINCOME20150531
union
select *
from WK_OPERATIONINCOME20150601
union
select *
from WK_OPERATIONINCOME20150602
union
select *
from WK_OPERATIONINCOME20150603
union
select *
from WK_OPERATIONINCOME20150604
union
select *
from WK_OPERATIONINCOME20150605
union
select *
from WK_OPERATIONINCOME20150606
union
select *
from WK_OPERATIONINCOME20150607
union
select *
from WK_OPERATIONINCOME20150608
union
select *
from WK_OPERATIONINCOME20150609
union
select *
from WK_OPERATIONINCOME20150610
union
select *
from WK_OPERATIONINCOME20150611
union
select *
from WK_OPERATIONINCOME20150612
union
select *
from WK_OPERATIONINCOME20150613
union
select *
from WK_OPERATIONINCOME20150614
union
select *
from WK_OPERATIONINCOME20150615
union
select *
from WK_OPERATIONINCOME20150616
union
select *
from WK_OPERATIONINCOME20150617
union
select *
from WK_OPERATIONINCOME20150618
union
select *
from WK_OPERATIONINCOME20150619
union
select *
from WK_OPERATIONINCOME20150620
union
select *
from WK_OPERATIONINCOME20150621
union
select *
from WK_OPERATIONINCOME20150622
union
select *
from WK_OPERATIONINCOME20150623
union
select *
from WK_OPERATIONINCOME20150624
union
select *
from WK_OPERATIONINCOME20150625
union
select *
from WK_OPERATIONINCOME20150626
union
select *
from WK_OPERATIONINCOME20150627
union
select *
from WK_OPERATIONINCOME20150628
union
select *
from WK_OPERATIONINCOME20150629
union
select *
from WK_OPERATIONINCOME20150630)



)

where GETONLONGITUDE>=103.932078 and GETONLONGITUDE<=104.208045
and GETOFFLONGITUDE>=103.932078 and GETOFFLONGITUDE<=104.208045
and GETONLATITUDE>=30.543160 and GETONLATITUDE<=30.785860
and GETOFFLATITUDE>=30.543160 and GETOFFLATITUDE<=30.785860 and operationtime>0 and operationmil<75 and operationmil>1 and operationmil<75 and operationmil>1 and (operationmil/(operationtime/60/60))<80 
and (operationmil/(operationtime/60/60))>15 and (operationamount/operationmil)>2.4 and (operationamount/operationmil)<6 )
group by rollup (上车点编号,下车点编号,日期1，日期2,operationmil,operationamount,operationtime)
having grouping_id (上车点编号,下车点编号,日期1，日期2,operationmil,operationamount,operationtime)=0);


