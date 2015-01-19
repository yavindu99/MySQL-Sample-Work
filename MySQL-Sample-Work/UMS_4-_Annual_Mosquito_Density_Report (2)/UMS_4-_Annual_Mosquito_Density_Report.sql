SELECT sag1.name,
SUM(IFNULL(sag1.8084_1,0)) AS '8084_1',
SUM(IFNULL(sag1.8085_1,0)) AS '8085_1',
SUM(IFNULL(sag1.8086_1,0)) AS '8086_1',
SUM(IFNULL(sag1.8087_1,0)) AS '8087_1',
SUM(IFNULL(sag1.8088_1,0)) AS '8088_1',
SUM(IFNULL(sag1.8089_1,0)) AS '8089_1',
SUM(IFNULL(sag1.8095_1,0)) AS '8095_1',
SUM(IFNULL(sag1.8092_1,0)) AS '8092_1',
SUM(IFNULL(sag1.8093_1,0)) AS '8093_1',
SUM(IFNULL(sag1.8090_1,0)) AS '8090_1',
SUM(IFNULL(sag1.8091_1,0)) AS '8091_1',
SUM(IFNULL(sag1.8094_1,0)) AS '8094_1',
SUM(IFNULL(sag1.8096_1,0)) AS '8096_1'


FROM

(
SELECT sag.name,
CASE WHEN sag.dataelementid=8084  THEN sag.value END AS '8084_1',
CASE WHEN sag.dataelementid=8085  THEN sag.value END AS '8085_1',
CASE WHEN sag.dataelementid=8086  THEN sag.value END AS '8086_1',
CASE WHEN sag.dataelementid=8087  THEN sag.value END AS '8087_1',
CASE WHEN sag.dataelementid=8088  THEN sag.value END AS '8088_1',
CASE WHEN sag.dataelementid=8089  THEN sag.value END AS '8089_1',
CASE WHEN sag.dataelementid=8095  THEN sag.value END AS '8095_1',
CASE WHEN sag.dataelementid=8092  THEN sag.value END AS '8092_1',
CASE WHEN sag.dataelementid=8093  THEN sag.value END AS '8093_1',
CASE WHEN sag.dataelementid=8090  THEN sag.value END AS '8090_1',
CASE WHEN sag.dataelementid=8091  THEN sag.value END AS '8091_1',
CASE WHEN sag.dataelementid=8094  THEN sag.value END AS '8094_1',
CASE WHEN sag.dataelementid=8096  THEN sag.value END AS '8096_1'

FROM
(
SELECT asd.organisationunitid,asd.idlevel3, asd.name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value 
FROM
(
SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('District','Blocks')

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (8084,8085,8086,8087,8088,8089,8095,8092,8093,8090,8091,8094,8096)
AND dv.categoryoptioncomboid IN (1)
AND YEAR(p.startdate) = YEAR('2012-09-01')  
AND periodtypeid = 6
)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1
GROUP BY sag1.name