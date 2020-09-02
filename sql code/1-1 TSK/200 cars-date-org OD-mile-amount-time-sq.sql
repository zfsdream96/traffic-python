select ÈÕÆÚ1,ÈÕÆÚ2,ÉÏ³µµã±àºÅ£¬ÏÂ³µµã±àºÅ£¬¼ÆÊý,operationmil,operationamount,operationtime
from (select ÈÕÆÚ1,ÈÕÆÚ2,ÉÏ³µµã±àºÅ,ÏÂ³µµã±àºÅ,count(*) as ¼ÆÊý,operationmil,operationamount,operationtime
from 
(select vehiclenum,to_char(PAIDTIME,'YYYY-MM-DD')as ÈÕÆÚ1,to_char(PAIDTIME,'hh24:mi:ss')as ÈÕÆÚ2,
GETONLONGITUDE as ÉÏ³µµã¾­¶È, 
GETONLATITUDE as ÉÏ³µµãÎ³¶È , 
GETOFFLONGITUDE as ÏÂ³µµã¾­¶È,
GETOFFLATITUDE as ÏÂ³µµãÎ³¶È,
ceil((GETONLONGITUDE-103.932078)/0.00431198)*100+ ceil((GETONLATITUDE -30.543160)/0.0037921875) as ÉÏ³µµã±àºÅ, 
ceil((GETOFFLONGITUDE-103.932078)/0.00431198)*100+ ceil((GETOFFLATITUDE -30.543160)/0.0037921875) as ÏÂ³µµã±àºÅ,
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
where vehiclenum ='´¨A-TN390'
or vehiclenum ='´¨A-TT471'
or vehiclenum ='´¨A-TR403'
or vehiclenum ='´¨A-TT236'
or vehiclenum ='´¨A-TC763'
or vehiclenum ='´¨A-TM789'
or vehiclenum ='´¨A-TR946'
or vehiclenum ='´¨A-TM626'
or vehiclenum ='´¨A-TU873'
or vehiclenum ='´¨A-TT351'
or vehiclenum ='´¨A-TH828'
or vehiclenum ='´¨A-TH421'
or vehiclenum ='´¨A-TU482'
or vehiclenum ='´¨A-TH785'
or vehiclenum ='´¨A-TL539'
or vehiclenum ='´¨A-TS081'
or vehiclenum ='´¨A-TS346'
or vehiclenum ='´¨A-TQ186'
or vehiclenum ='´¨A-TT570'
or vehiclenum ='´¨A-TN810'
or vehiclenum ='´¨A-TU130'
or vehiclenum ='´¨A-TN495'
or vehiclenum ='´¨A-TR749'
or vehiclenum ='´¨A-TS119'
or vehiclenum ='´¨A-TQ251'
or vehiclenum ='´¨A-TG577'
or vehiclenum ='´¨A-TQ893'
or vehiclenum ='´¨A-TC589'
or vehiclenum ='´¨A-TD816'
or vehiclenum ='´¨A-TR995'
or vehiclenum ='´¨A-TM989'
or vehiclenum ='´¨A-TN279'
or vehiclenum ='´¨A-TP878'
or vehiclenum ='´¨A-TD828'
or vehiclenum ='´¨A-TS145'
or vehiclenum ='´¨A-TU813'
or vehiclenum ='´¨A-TJ050'
or vehiclenum ='´¨A-TT087'
or vehiclenum ='´¨A-TD567'
or vehiclenum ='´¨A-TF992'
or vehiclenum ='´¨A-TM557'
or vehiclenum ='´¨A-TN268'
or vehiclenum ='´¨A-TN640'
or vehiclenum ='´¨A-TL401'
or vehiclenum ='´¨A-TD107'
or vehiclenum ='´¨A-TC567'
or vehiclenum ='´¨A-TP808'
or vehiclenum ='´¨A-TU521'
or vehiclenum ='´¨A-TK156'
or vehiclenum ='´¨A-TH157'
or vehiclenum ='´¨A-TU507'
or vehiclenum ='´¨A-TT699'
or vehiclenum ='´¨A-TP349'
or vehiclenum ='´¨A-TP150'
or vehiclenum ='´¨A-TU903'
or vehiclenum ='´¨A-TR386'
or vehiclenum ='´¨A-TJ605'
or vehiclenum ='´¨A-TQ978'
or vehiclenum ='´¨A-TN482'
or vehiclenum ='´¨A-TH783'
or vehiclenum ='´¨A-TJ049'
or vehiclenum ='´¨A-TS217'
or vehiclenum ='´¨A-TK013'
or vehiclenum ='´¨A-TJ431'
or vehiclenum ='´¨A-TU460'
or vehiclenum ='´¨A-TR427'
or vehiclenum ='´¨A-TU850'
or vehiclenum ='´¨A-TU527'
or vehiclenum ='´¨A-TS592'
or vehiclenum ='´¨A-TU065'
or vehiclenum ='´¨A-TR978'
or vehiclenum ='´¨A-TS657'
or vehiclenum ='´¨A-TP117'
or vehiclenum ='´¨A-TS325'
or vehiclenum ='´¨A-TC649'
or vehiclenum ='´¨A-TS278'
or vehiclenum ='´¨A-TN976'
or vehiclenum ='´¨A-TU387'
or vehiclenum ='´¨A-TT062'
or vehiclenum ='´¨A-TR933'
or vehiclenum ='´¨A-TE379'
or vehiclenum ='´¨A-TR399'
or vehiclenum ='´¨A-TK797'
or vehiclenum ='´¨A-TQ473'
or vehiclenum ='´¨A-TF198'
or vehiclenum ='´¨A-TN523'
or vehiclenum ='´¨A-TR113'
or vehiclenum ='´¨A-TQ086'
or vehiclenum ='´¨A-TF875'
or vehiclenum ='´¨A-TL182'
or vehiclenum ='´¨A-TR478'
or vehiclenum ='´¨A-TL350'
or vehiclenum ='´¨A-TQ861'
or vehiclenum ='´¨A-TU465'
or vehiclenum ='´¨A-TT858'
or vehiclenum ='´¨A-TJ602'
or vehiclenum ='´¨A-TJ328'
or vehiclenum ='´¨A-TU932'
or vehiclenum ='´¨A-TU370'
or vehiclenum ='´¨A-TS307'
or vehiclenum ='´¨A-TL035'
or vehiclenum ='´¨A-TF237'
or vehiclenum ='´¨A-TR873'
or vehiclenum ='´¨A-TR577'
or vehiclenum ='´¨A-TG688'
or vehiclenum ='´¨A-TL329'
or vehiclenum ='´¨A-TS636'
or vehiclenum ='´¨A-TR841'
or vehiclenum ='´¨A-TL551'
or vehiclenum ='´¨A-TH950'
or vehiclenum ='´¨A-TT603'
or vehiclenum ='´¨A-TN449'
or vehiclenum ='´¨A-TK017'
or vehiclenum ='´¨A-TE928'
or vehiclenum ='´¨A-TG092'
or vehiclenum ='´¨A-TK245'
or vehiclenum ='´¨A-TP100'
or vehiclenum ='´¨A-TP722'
or vehiclenum ='´¨A-TR425'
or vehiclenum ='´¨A-TU270'
or vehiclenum ='´¨A-TP252'
or vehiclenum ='´¨A-TC670'
or vehiclenum ='´¨A-TT582'
or vehiclenum ='´¨A-TQ413'
or vehiclenum ='´¨A-TM006'
or vehiclenum ='´¨A-TP245'
or vehiclenum ='´¨A-TT735'
or vehiclenum ='´¨A-TQ738'
or vehiclenum ='´¨A-TT947'
or vehiclenum ='´¨A-TS129'
or vehiclenum ='´¨A-TN479'
or vehiclenum ='´¨A-TN881'
or vehiclenum ='´¨A-TN248'
or vehiclenum ='´¨A-TT168'
or vehiclenum ='´¨A-TR132'
or vehiclenum ='´¨A-TS957'
or vehiclenum ='´¨A-TT209'
or vehiclenum ='´¨A-TR339'
or vehiclenum ='´¨A-TC245'
or vehiclenum ='´¨A-TP633'
or vehiclenum ='´¨A-TR302'
or vehiclenum ='´¨A-TR281'
or vehiclenum ='´¨A-TT166'
or vehiclenum ='´¨A-TM170'
or vehiclenum ='´¨A-TU269'
or vehiclenum ='´¨A-TK828'
or vehiclenum ='´¨A-TK151'
or vehiclenum ='´¨A-TT943'
or vehiclenum ='´¨A-TR130'
or vehiclenum ='´¨A-TU427'
or vehiclenum ='´¨A-TL620'
or vehiclenum ='´¨A-TQ642'
or vehiclenum ='´¨A-TU585'
or vehiclenum ='´¨A-TV102'
or vehiclenum ='´¨A-TN593'
or vehiclenum ='´¨A-TG501'
or vehiclenum ='´¨A-TD519'
or vehiclenum ='´¨A-TP476'
or vehiclenum ='´¨A-TQ349'
or vehiclenum ='´¨A-TR856'
or vehiclenum ='´¨A-TT851'
or vehiclenum ='´¨A-TM810'
or vehiclenum ='´¨A-TQ695'
or vehiclenum ='´¨A-TS215'
or vehiclenum ='´¨A-TE505'
or vehiclenum ='´¨A-TP257'
or vehiclenum ='´¨A-TS142'
or vehiclenum ='´¨A-TR632'
or vehiclenum ='´¨A-TF190'
or vehiclenum ='´¨A-TE973'
or vehiclenum ='´¨A-TL397'
or vehiclenum ='´¨A-TP699'
or vehiclenum ='´¨A-TN820'
or vehiclenum ='´¨A-TU806'
or vehiclenum ='´¨A-TH358'
or vehiclenum ='´¨A-TP365'
or vehiclenum ='´¨A-TJ562'
or vehiclenum ='´¨A-TK771'
or vehiclenum ='´¨A-TL547'
or vehiclenum ='´¨A-TC516'
or vehiclenum ='´¨A-TU707'
or vehiclenum ='´¨A-TH728'
or vehiclenum ='´¨A-TR155'
or vehiclenum ='´¨A-TL799'
or vehiclenum ='´¨A-TV552'
or vehiclenum ='´¨A-TN096'
or vehiclenum ='´¨A-TT475'
or vehiclenum ='´¨A-TR171'
or vehiclenum ='´¨A-TP426'
or vehiclenum ='´¨A-TS338'
or vehiclenum ='´¨A-TS030'
or vehiclenum ='´¨A-TQ026'
or vehiclenum ='´¨A-TS545'
or vehiclenum ='´¨A-TT645'
or vehiclenum ='´¨A-TN762'
or vehiclenum ='´¨A-TQ985'
or vehiclenum ='´¨A-TQ438'
or vehiclenum ='´¨A-TR647'
or vehiclenum ='´¨A-TK785'
or vehiclenum ='´¨A-TQ868'



)

where GETONLONGITUDE>=103.932078 and GETONLONGITUDE<=104.208045
and GETOFFLONGITUDE>=103.932078 and GETOFFLONGITUDE<=104.208045
and GETONLATITUDE>=30.543160 and GETONLATITUDE<=30.785860
and GETOFFLATITUDE>=30.543160 and GETOFFLATITUDE<=30.785860 and operationtime>0 and operationmil<75 and operationmil>1 and (operationmil/(operationtime/60/60))<80 
and (operationmil/(operationtime/60/60))>15 and (operationamount/operationmil)>2.4 and (operationamount/operationmil)<5 )
group by rollup (ÉÏ³µµã±àºÅ,ÏÂ³µµã±àºÅ,ÈÕÆÚ1£¬ÈÕÆÚ2,operationmil,operationamount,operationtime)
having grouping_id(ÉÏ³µµã±àºÅ,ÏÂ³µµã±àºÅ,ÈÕÆÚ1£¬ÈÕÆÚ2,operationmil,operationamount,operationtime)=0);
