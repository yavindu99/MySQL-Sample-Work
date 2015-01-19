
SELECT sag1.name,
SUM(IFNULL(sag1.8109_1_curr,0)) AS '8109_1_curr',
SUM(IFNULL(sag1.8110_1_curr,0)) AS '8110_1_curr',
SUM(IFNULL(sag1.8111_1_curr,0)) AS '8111_1_curr',
SUM(IFNULL(sag1.8112_1_curr,0)) AS '8112_1_curr',
SUM(IFNULL(sag1.8113_1_curr,0)) AS '8113_1_curr',
SUM(IFNULL(sag1.8114_1_curr,0)) AS '8114_1_curr',
SUM(IFNULL(sag1.8118_1_curr,0)) AS '8118_1_curr',
IFNULL(GROUP_CONCAT(sag1.8119_1_curr),'') AS '8119_1_curr',
IFNULL(GROUP_CONCAT(sag1.8120_1_curr),'') AS '8120_1_curr',
SUM(IFNULL(sag1.8109_1_upto,0)) AS '8109_1_upto',
SUM(IFNULL(sag1.8110_1_upto,0)) AS '8110_1_upto',
SUM(IFNULL(sag1.8111_1_upto,0)) AS '8111_1_upto',
SUM(IFNULL(sag1.8112_1_upto,0)) AS '8112_1_upto',
SUM(IFNULL(sag1.8113_1_upto,0)) AS '8113_1_upto',
SUM(IFNULL(sag1.8114_1_upto,0)) AS '8114_1_upto'

FROM
(
SELECT sag.gname,sag.name,

CASE WHEN sag.dataelementid=8109 AND sag.time='curr' THEN sag.value END AS '8109_1_curr',
CASE WHEN sag.dataelementid=8110 AND sag.time='curr' THEN sag.value END AS '8110_1_curr',
CASE WHEN sag.dataelementid=8111 AND sag.time='curr' THEN sag.value END AS '8111_1_curr',
CASE WHEN sag.dataelementid=8112 AND sag.time='curr' THEN sag.value END AS '8112_1_curr',
CASE WHEN sag.dataelementid=8113 AND sag.time='curr' THEN sag.value END AS '8113_1_curr',
CASE WHEN sag.dataelementid=8114 AND sag.time='curr' THEN sag.value END AS '8114_1_curr',
CASE WHEN sag.dataelementid=8118 AND sag.time='curr' THEN sag.value END AS '8118_1_curr',
CASE WHEN sag.dataelementid=8119 AND sag.time='curr' THEN sag.value END AS '8119_1_curr',
CASE WHEN sag.dataelementid=8120 AND sag.time='curr' THEN sag.value END AS '8120_1_curr',


CASE WHEN sag.dataelementid='8109' AND sag.time='upto' THEN sag.value END AS '8109_1_upto',
CASE WHEN sag.dataelementid='8110' AND sag.time='upto' THEN sag.value END AS '8110_1_upto',
CASE WHEN sag.dataelementid='8111' AND sag.time='upto' THEN sag.value END AS '8111_1_upto',
CASE WHEN sag.dataelementid='8112' AND sag.time='upto' THEN sag.value END AS '8112_1_upto',
CASE WHEN sag.dataelementid='8113' AND sag.time='upto' THEN sag.value END AS '8113_1_upto',
CASE WHEN sag.dataelementid='8114' AND sag.time='upto' THEN sag.value END AS '8114_1_upto'



FROM
(
#current_date
SELECT asd.organisationunitid,asd.idlevel3, asd.name AS 'Dname',ou.name,asd.gname,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,'curr' AS 'time'
FROM
(
SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CHCs','PHCs','Sub Centres','Sub District Hospitals','District Hospitals','Medical College','RH')
AND ou.name LIKE 'Ludhiana District'


)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate 
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (8109,8110,8111,8112,8113,8114,8118,8119,8120)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate = '2013-12-20'  
AND periodtypeid = 1
)asd1

ON asd.organisationunitid = asd1.sourceid
INNER JOIN organisationunit ou ON ou.organisationunitid=asd.organisationunitid

UNION

#upto_date
SELECT asd.organisationunitid,asd.idlevel3, asd.name AS 'Dname',ou.name,asd.gname,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,'upto' AS 'time'
FROM
(
SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CHCs','PHCs','Sub Centres','Sub District Hospitals','District Hospitals','Medical College','RH')
AND ou.name LIKE 'Ludhiana District'

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (8109,8110,8111,8112,8113,8114)
AND dv.categoryoptioncomboid IN (1)
AND DAY(p.startdate) <  DAY('2013-12-20')+1
AND MONTH(p.startdate) = MONTH('2013-12-20') 
AND periodtypeid = 1
)asd1

ON asd.organisationunitid = asd1.sourceid
INNER JOIN organisationunit ou ON ou.organisationunitid=asd.organisationunitid
)sag
)sag1
GROUP BY sag1.name



