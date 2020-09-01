select vehiclenum,ÈÕÆÚ1,ÈÕÆÚ2,ÉÏ³µµã±àºÅ£¬ÏÂ³µµã±àºÅ£¬¼ÆÊý,operationmil,operationamount,operationtime
from (select vehiclenum,ÈÕÆÚ1,ÈÕÆÚ2,ÉÏ³µµã±àºÅ,ÏÂ³µµã±àºÅ,count(*) as ¼ÆÊý,operationmil,operationamount,operationtime
from 
(select vehiclenum,to_char(PAIDTIME,'YYYY-MM-DD')as ÈÕÆÚ1,to_char(PAIDTIME,'hh24:mi:ss')as ÈÕÆÚ2,
GETONLONGITUDE as ÉÏ³µµã¾­¶È, 
GETONLATITUDE as ÉÏ³µµãÎ³¶È , 
GETOFFLONGITUDE as ÏÂ³µµã¾­¶È,
GETOFFLATITUDE as ÏÂ³µµãÎ³¶È,
ceil((GETONLONGITUDE-103.6985766)/0.01193061)*100+ ceil((GETONLATITUDE -30.3159936)/0.0098227)as ÉÏ³µµã±àºÅ, 
ceil((GETOFFLONGITUDE-103.6985766)/0.01193061)*100+ ceil((GETOFFLATITUDE -30.3159936)/0.0098227)as ÏÂ³µµã±àºÅ,
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
where vehiclenum ='´¨A-TN499'
or vehiclenum ='´¨A-TT458'
or vehiclenum ='´¨A-TF909'
or vehiclenum ='´¨A-TT921'
or vehiclenum ='´¨A-TN710'
or vehiclenum ='´¨A-TT883'
or vehiclenum ='´¨A-TC772'
or vehiclenum ='´¨A-TU421'
or vehiclenum ='´¨A-TF439'
or vehiclenum ='´¨A-TG955'
or vehiclenum ='´¨A-TP461'
or vehiclenum ='´¨A-TH249'
or vehiclenum ='´¨A-TT305'
or vehiclenum ='´¨A-TP698'
or vehiclenum ='´¨A-TN390'
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
or vehiclenum ='´¨A-TU602'
or vehiclenum ='´¨A-TH957'
or vehiclenum ='´¨A-TQ531'
or vehiclenum ='´¨A-TQ578'
or vehiclenum ='´¨A-TL845'
or vehiclenum ='´¨A-TS272'
or vehiclenum ='´¨A-TQ293'
or vehiclenum ='´¨A-TM641'
or vehiclenum ='´¨A-TK750'
or vehiclenum ='´¨A-TN653'
or vehiclenum ='´¨A-TU191'
or vehiclenum ='´¨A-TS397'
or vehiclenum ='´¨A-TN262'
or vehiclenum ='´¨A-TR185'
or vehiclenum ='´¨A-TP282'
or vehiclenum ='´¨A-TM008'
or vehiclenum ='´¨A-TU633'
or vehiclenum ='´¨A-TH331'
or vehiclenum ='´¨A-TU132'
or vehiclenum ='´¨A-TR660'
or vehiclenum ='´¨A-TS781'
or vehiclenum ='´¨A-TR703'
or vehiclenum ='´¨A-TQ116'
or vehiclenum ='´¨A-TL598'
or vehiclenum ='´¨A-TQ917'
or vehiclenum ='´¨A-TR529'
or vehiclenum ='´¨A-TS198'
or vehiclenum ='´¨A-TU339'
or vehiclenum ='´¨A-TR426'
or vehiclenum ='´¨A-TR299'
or vehiclenum ='´¨A-TM759'
or vehiclenum ='´¨A-TS020'
or vehiclenum ='´¨A-TL975'
or vehiclenum ='´¨A-TR080'
or vehiclenum ='´¨A-TS310'
or vehiclenum ='´¨A-TP542'
or vehiclenum ='´¨A-TU732'
or vehiclenum ='´¨A-TS100'
or vehiclenum ='´¨A-TM385'
or vehiclenum ='´¨A-TU017'
or vehiclenum ='´¨A-TK620'
or vehiclenum ='´¨A-TR821'
or vehiclenum ='´¨A-TG880'
or vehiclenum ='´¨A-TS893'
or vehiclenum ='´¨A-TE387'
or vehiclenum ='´¨A-TF498'
or vehiclenum ='´¨A-TU048'
or vehiclenum ='´¨A-TR313'
or vehiclenum ='´¨A-TN178'
or vehiclenum ='´¨A-TS615'
or vehiclenum ='´¨A-TS607'
or vehiclenum ='´¨A-TT797'
or vehiclenum ='´¨A-TU731'
or vehiclenum ='´¨A-TN340'
or vehiclenum ='´¨A-TQ910'
or vehiclenum ='´¨A-TK733'
or vehiclenum ='´¨A-TS541'
or vehiclenum ='´¨A-TT473'
or vehiclenum ='´¨A-TU632'
or vehiclenum ='´¨A-TQ046'
or vehiclenum ='´¨A-TN585'
or vehiclenum ='´¨A-TS742'
or vehiclenum ='´¨A-TV667'
or vehiclenum ='´¨A-TR202'
or vehiclenum ='´¨A-TK305'
or vehiclenum ='´¨A-TT966'
or vehiclenum ='´¨A-TQ501'
or vehiclenum ='´¨A-TD336'
or vehiclenum ='´¨A-TS056'
or vehiclenum ='´¨A-TR033'
or vehiclenum ='´¨A-TT350'
or vehiclenum ='´¨A-TH076'
or vehiclenum ='´¨A-TV218'
or vehiclenum ='´¨A-TR071'
or vehiclenum ='´¨A-TL782'
or vehiclenum ='´¨A-TM382'
or vehiclenum ='´¨A-TJ360'
or vehiclenum ='´¨A-TT296'
or vehiclenum ='´¨A-TC828'
or vehiclenum ='´¨A-TQ833'
or vehiclenum ='´¨A-TF961'
or vehiclenum ='´¨A-TQ563'
or vehiclenum ='´¨A-TP928'
or vehiclenum ='´¨A-TM120'
or vehiclenum ='´¨A-TV901'
or vehiclenum ='´¨A-TR885'
or vehiclenum ='´¨A-TU187'
or vehiclenum ='´¨A-TU082'
or vehiclenum ='´¨A-TN516'
or vehiclenum ='´¨A-TJ772'
or vehiclenum ='´¨A-TV948'
or vehiclenum ='´¨A-TD573'
or vehiclenum ='´¨A-TR133'
or vehiclenum ='´¨A-TT949'
or vehiclenum ='´¨A-TL006'
or vehiclenum ='´¨A-TP430'
or vehiclenum ='´¨A-TK491'
or vehiclenum ='´¨A-TG586'
or vehiclenum ='´¨A-TP155'
or vehiclenum ='´¨A-TE608'
or vehiclenum ='´¨A-TN049'
or vehiclenum ='´¨A-TP727'
or vehiclenum ='´¨A-TL800'
or vehiclenum ='´¨A-TG833'
or vehiclenum ='´¨A-TF427'
or vehiclenum ='´¨A-TT499'
or vehiclenum ='´¨A-TV279'
or vehiclenum ='´¨A-TR411'
or vehiclenum ='´¨A-TE538'
or vehiclenum ='´¨A-TT365'
or vehiclenum ='´¨A-TR879'
or vehiclenum ='´¨A-TV506'
or vehiclenum ='´¨A-TQ793'
or vehiclenum ='´¨A-TL838'
or vehiclenum ='´¨A-TU385'
or vehiclenum ='´¨A-TL332'
or vehiclenum ='´¨A-TF429'
or vehiclenum ='´¨A-TG065'
or vehiclenum ='´¨A-TQ128'
or vehiclenum ='´¨A-TH552'
or vehiclenum ='´¨A-TQ421'
or vehiclenum ='´¨A-TS121'
or vehiclenum ='´¨A-TU887'
or vehiclenum ='´¨A-TM598'
or vehiclenum ='´¨A-TU687'
or vehiclenum ='´¨A-TC417'
or vehiclenum ='´¨A-TT167'
or vehiclenum ='´¨A-TH725'
or vehiclenum ='´¨A-TS452'
or vehiclenum ='´¨A-TL388'
or vehiclenum ='´¨A-TF106'
or vehiclenum ='´¨A-TF986'
or vehiclenum ='´¨A-TS388'
or vehiclenum ='´¨A-TR338'
or vehiclenum ='´¨A-TU083'
or vehiclenum ='´¨A-TV725'
or vehiclenum ='´¨A-TS255'
or vehiclenum ='´¨A-TH918'
or vehiclenum ='´¨A-TU425'
or vehiclenum ='´¨A-TU185'
or vehiclenum ='´¨A-TU073'
or vehiclenum ='´¨A-TR658'
or vehiclenum ='´¨A-TK576'
or vehiclenum ='´¨A-TU122'
or vehiclenum ='´¨A-TE145'
or vehiclenum ='´¨A-TT317'
or vehiclenum ='´¨A-TS920'
or vehiclenum ='´¨A-TR416'
or vehiclenum ='´¨A-TR953'
or vehiclenum ='´¨A-TN498'
or vehiclenum ='´¨A-TN045'
or vehiclenum ='´¨A-TR072'
or vehiclenum ='´¨A-TQ813'
or vehiclenum ='´¨A-TL185'
or vehiclenum ='´¨A-TH260'
or vehiclenum ='´¨A-TQ663'
or vehiclenum ='´¨A-TN360'
or vehiclenum ='´¨A-TH826'
or vehiclenum ='´¨A-TL981'
or vehiclenum ='´¨A-TN648'
or vehiclenum ='´¨A-TM942'
or vehiclenum ='´¨A-TR258'
or vehiclenum ='´¨A-TP197'
or vehiclenum ='´¨A-TG536'
or vehiclenum ='´¨A-TL921'
or vehiclenum ='´¨A-TL880'
or vehiclenum ='´¨A-TQ379'
or vehiclenum ='´¨A-TN302'
or vehiclenum ='´¨A-TN407'
or vehiclenum ='´¨A-TM469'
or vehiclenum ='´¨A-TH807'
or vehiclenum ='´¨A-TV037'
or vehiclenum ='´¨A-TN373'
or vehiclenum ='´¨A-TU610'
or vehiclenum ='´¨A-TK485'
or vehiclenum ='´¨A-TV805'
or vehiclenum ='´¨A-TM873'
or vehiclenum ='´¨A-TL335'
or vehiclenum ='´¨A-TQ118'
or vehiclenum ='´¨A-TN690'
or vehiclenum ='´¨A-TV535'
or vehiclenum ='´¨A-TE889'
or vehiclenum ='´¨A-TS399'
or vehiclenum ='´¨A-TR196'
or vehiclenum ='´¨A-TQ342'
or vehiclenum ='´¨A-TR229'
or vehiclenum ='´¨A-TR875'
or vehiclenum ='´¨A-TS913'
or vehiclenum ='´¨A-TS660'
or vehiclenum ='´¨A-TD232'
or vehiclenum ='´¨A-TR886'
or vehiclenum ='´¨A-TE140'
or vehiclenum ='´¨A-TN955'
or vehiclenum ='´¨A-TS363'
or vehiclenum ='´¨A-TQ727'
or vehiclenum ='´¨A-TL360'
or vehiclenum ='´¨A-TM531'
or vehiclenum ='´¨A-TS748'
or vehiclenum ='´¨A-TN605'
or vehiclenum ='´¨A-TR813'
or vehiclenum ='´¨A-TP442'
or vehiclenum ='´¨A-TM285'
or vehiclenum ='´¨A-TM969'
or vehiclenum ='´¨A-TM928'
or vehiclenum ='´¨A-TU025'
or vehiclenum ='´¨A-TT255'
or vehiclenum ='´¨A-TQ961'
or vehiclenum ='´¨A-TU257'
or vehiclenum ='´¨A-TU716'
or vehiclenum ='´¨A-TG527'
or vehiclenum ='´¨A-TJ273'
or vehiclenum ='´¨A-TN095'
or vehiclenum ='´¨A-TJ233'
or vehiclenum ='´¨A-TU059'
or vehiclenum ='´¨A-TP169'
or vehiclenum ='´¨A-TC975'
or vehiclenum ='´¨A-TQ865'
or vehiclenum ='´¨A-TU039'
or vehiclenum ='´¨A-TH572'
or vehiclenum ='´¨A-TK925'
or vehiclenum ='´¨A-TD718'
or vehiclenum ='´¨A-TP211'
or vehiclenum ='´¨A-TQ125'
or vehiclenum ='´¨A-TH519'
or vehiclenum ='´¨A-TM197'
or vehiclenum ='´¨A-TU628'
or vehiclenum ='´¨A-TS410'
or vehiclenum ='´¨A-TP379'
or vehiclenum ='´¨A-TE258'
or vehiclenum ='´¨A-TU776'
or vehiclenum ='´¨A-TM491'
or vehiclenum ='´¨A-TN900'
or vehiclenum ='´¨A-TK106'
or vehiclenum ='´¨A-TH772'
or vehiclenum ='´¨A-TS468'
or vehiclenum ='´¨A-TS941'
or vehiclenum ='´¨A-TT265'
or vehiclenum ='´¨A-TS929'
or vehiclenum ='´¨A-TR977'
or vehiclenum ='´¨A-TF196'
or vehiclenum ='´¨A-TD431'
or vehiclenum ='´¨A-TD163'
or vehiclenum ='´¨A-TL405'
or vehiclenum ='´¨A-TQ926'
or vehiclenum ='´¨A-TU090'
or vehiclenum ='´¨A-TQ290'
or vehiclenum ='´¨A-TM968'
or vehiclenum ='´¨A-TK483'
or vehiclenum ='´¨A-TQ029'
or vehiclenum ='´¨A-TT780'
or vehiclenum ='´¨A-TM361'
or vehiclenum ='´¨A-TS156'
or vehiclenum ='´¨A-TP302'
or vehiclenum ='´¨A-TM582'
or vehiclenum ='´¨A-TR049'
or vehiclenum ='´¨A-TS309'
or vehiclenum ='´¨A-TS482'
or vehiclenum ='´¨A-TR032'
or vehiclenum ='´¨A-TJ249'
or vehiclenum ='´¨A-TS562'
or vehiclenum ='´¨A-TP333'
or vehiclenum ='´¨A-TR226'
or vehiclenum ='´¨A-TK739'
or vehiclenum ='´¨A-TH411'
or vehiclenum ='´¨A-TS089'
or vehiclenum ='´¨A-TG119'
or vehiclenum ='´¨A-TJ722'
or vehiclenum ='´¨A-TP641'
or vehiclenum ='´¨A-TU367'
or vehiclenum ='´¨A-TM367'
or vehiclenum ='´¨A-TN630'
or vehiclenum ='´¨A-TR247'
or vehiclenum ='´¨A-TM050'
or vehiclenum ='´¨A-TJ928'
or vehiclenum ='´¨A-TH033'
or vehiclenum ='´¨A-TQ757'
or vehiclenum ='´¨A-TM057'
or vehiclenum ='´¨A-TT508'
or vehiclenum ='´¨A-TJ036'
or vehiclenum ='´¨A-TP553'
or vehiclenum ='´¨A-TM851'
or vehiclenum ='´¨A-TR469'
or vehiclenum ='´¨A-TF795'
or vehiclenum ='´¨A-TR868'



)

where GETONLONGITUDE>=103.6985766 and GETONLONGITUDE<=104.4621352 
and GETOFFLONGITUDE>=103.6985766 and GETOFFLONGITUDE<=104.4621352
and GETONLATITUDE>=30.3159936 and GETONLATITUDE<=30.9446462
and GETOFFLATITUDE>=30.3159936 and GETOFFLATITUDE<=30.9446462)
group by rollup (vehiclenum,ÉÏ³µµã±àºÅ,ÏÂ³µµã±àºÅ,ÈÕÆÚ1£¬ÈÕÆÚ2,operationmil,operationamount,operationtime)
having grouping_id(ÉÏ³µµã±àºÅ,ÏÂ³µµã±àºÅ,ÈÕÆÚ1£¬ÈÕÆÚ2,operationmil,operationamount,operationtime)=0);
