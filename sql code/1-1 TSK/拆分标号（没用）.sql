select 上车点编号a,上车点编号b,下车点编号a,下车点编号b,计数,operationmil
from (select 上车点编号a,上车点编号b,下车点编号a,下车点编号b,count(*) as 计数,operationmil
from 
(select
GETONLONGITUDE as 上车点经度, 
GETONLATITUDE as 上车点纬度 , 
GETOFFLONGITUDE as 下车点经度,
GETOFFLATITUDE as 下车点纬度,
ceil((GETONLONGITUDE-103.6985766)/0.01193061) as 上车点编号a,ceil((GETONLATITUDE -30.3159936)/0.0098227) as 上车点编号b, 
ceil((GETONLONGITUDE-103.6985766)/0.01193061) as 下车点编号a,ceil((GETONLATITUDE -30.3159936)/0.0098227) as 下车点编号b, 
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
from WK_OPERATIONINCOME20150630
)

)

where GETONLONGITUDE>=103.6985766 and GETONLONGITUDE<=104.4621352 
and GETOFFLONGITUDE>=103.6985766 and GETOFFLONGITUDE<=104.4621352
and GETONLATITUDE>=30.3159936 and GETONLATITUDE<=30.9446462
and GETOFFLATITUDE>=30.3159936 and GETOFFLATITUDE<=30.9446462 )
group by rollup (上车点编号a,上车点编号b,下车点编号a,下车点编号b,operationmil)
having grouping_id(上车点编号a,上车点编号b,下车点编号a,下车点编号b,operationmil)=0)
