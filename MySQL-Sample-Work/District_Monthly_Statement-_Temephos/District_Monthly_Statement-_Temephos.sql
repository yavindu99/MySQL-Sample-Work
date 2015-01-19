SELECT sag1.name,
SUM(IFNULL(sag1.7485_pre,0)) AS '7485_pre',
SUM(IFNULL(sag1.7453_curr,0)) AS '7453_curr',
SUM(IFNULL(sag1.7451_curr,0)) AS '7451_curr',
SUM(IFNULL(sag1.7452_curr,0)) AS '7452_curr',
SUM(IFNULL(sag1.7469_curr,0)) AS '7469_curr',
SUM(IFNULL(sag1.7470_curr,0)) AS '7470_curr',
SUM(IFNULL(sag1.7485_curr,0)) AS '7485_curr',
SUM(IFNULL(sag1.7470_upto_mn,0)) AS '7470_upto_mn'
FROM
(
SELECT sag.name,
CASE WHEN sag.dataelementid=7485 AND sag.month LIKE 'pre' THEN sag.value END AS '7485_pre',
CASE WHEN sag.dataelementid=7453 AND sag.month LIKE 'curr' THEN sag.value END AS '7453_curr',
CASE WHEN sag.dataelementid=7451 AND sag.month LIKE 'curr' THEN sag.value END AS '7451_curr',
CASE WHEN sag.dataelementid=7452 AND sag.month LIKE 'curr' THEN sag.value END AS '7452_curr',
CASE WHEN sag.dataelementid=7469 AND sag.month LIKE 'curr' THEN sag.value END AS '7469_curr',
CASE WHEN sag.dataelementid=7470 AND sag.month LIKE 'curr' THEN sag.value END AS '7470_curr',
CASE WHEN sag.dataelementid=7485 AND sag.month LIKE 'curr' THEN sag.value END AS '7485_curr',
CASE WHEN sag.dataelementid=7470 AND sag.month LIKE 'upto_mn' THEN sag.value END AS '7470_upto_mn' 
 
FROM
(
#current_month
SELECT asd.organisationunitid,asd.idlevel3, asd.name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value' , 'curr' AS 'month'
FROM
(
SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CHCs','Sub District Hospitals','District Hospitals','PHCs','RH','Medical College','Sub Centres')

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7453,7451,7452,7469,7470,7485)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
AND periodtypeid = 3
)asd1

ON asd.organisationunitid = asd1.sourceid


UNION


#pre_month
SELECT asd.organisationunitid,asd.idlevel3, asd.name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value' ,'pre' AS 'month'
 FROM
(
SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CHCs','Sub District Hospitals','District Hospitals','PHCs','RH','Medical College','Sub Centres')

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7485)
AND dv.categoryoptioncomboid IN (1)
AND MONTH(p.startdate) = MONTH('2013-09-01')-1
AND periodtypeid = 3
)asd1

ON asd.organisationunitid = asd1.sourceid

UNION

#upto the month
SELECT asd.organisationunitid,asd.name,asd.name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','upto_mn' AS 'month'
FROM
(
SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('Sub District Hospitals','District Hospitals','Medical College','CHCs','PHCs','RH','Sub Centres')
#AND ou.name LIKE 'Ludhiana District'

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7470)
AND dv.categoryoptioncomboid IN (1)
#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
AND MONTH(p.startdate) < MONTH('2013-09-01') +1
AND YEAR(p.startdate) = YEAR('2013-09-01')
AND periodtypeid = 3
)asd1

ON asd.organisationunitid = asd1.sourceid

)sag
)sag1
GROUP BY sag1.name
