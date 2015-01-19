SELECT sag1.name,
SUM(IFNULL(sag1.7963_1,0)) AS '7963_1',
SUM(IFNULL(sag1.7964_1,0)) AS '7964_1',
SUM(IFNULL(sag1.7965_1,0)) AS '7965_1',
SUM(IFNULL(sag1.7966_1,0)) AS '7966_1',
SUM(IFNULL(sag1.7967_1,0)) AS '7967_1',

SUM(IFNULL(sag1.8129_1,0)) AS '8129_1',
SUM(IFNULL(sag1.8130_1,0)) AS '8130_1',
SUM(IFNULL(sag1.8131_1,0)) AS '8131_1',
SUM(IFNULL(sag1.8132_1,0)) AS '8132_1',
SUM(IFNULL(sag1.8133_1,0)) AS '8133_1'

FROM
(

SELECT sag.organisationunitid,sag.name,
CASE WHEN sag.dataelementid=7963 THEN sag.value END AS '7963_1',
CASE WHEN sag.dataelementid=7964 THEN sag.value END AS '7964_1',
CASE WHEN sag.dataelementid=7965 THEN sag.value END AS '7965_1',
CASE WHEN sag.dataelementid=7966 THEN sag.value END AS '7966_1',
CASE WHEN sag.dataelementid=7967 THEN sag.value END AS '7967_1',

CASE WHEN sag.dataelementid=8129 THEN sag.value END AS '8129_1',
CASE WHEN sag.dataelementid=8130 THEN sag.value END AS '8130_1',
CASE WHEN sag.dataelementid=8131 THEN sag.value END AS '8131_1',
CASE WHEN sag.dataelementid=8132 THEN sag.value END AS '8132_1',
CASE WHEN sag.dataelementid=8133 THEN sag.value END AS '8133_1'




FROM
(
SELECT * FROM
(
	SELECT os.organisationunitid,os.idlevel4,og.name AS 'gname',ou.name,os.level
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.organisationunitid
	WHERE og.name IN ('Sub Centres')
	AND os.idlevel4 IN 
			(SELECT ou.organisationunitid 
			 FROM organisationunit ou 
			 WHERE ou.name LIKE 'Lopoke Block')
)o1

LEFT JOIN 

(
SELECT dv.dataelementid , dv.sourceid , dv.periodid , dv.categoryoptioncomboid , p.startdate ,dv.value FROM 
datavalue dv 
INNER JOIN period p ON p.periodid = dv.periodid
#WHERE Month(p.startdate) = '2013-10'
#And Year(p.startdate)= '2013-10'
AND p.startdate BETWEEN '2013-10-01' AND '2013-10-30'
AND dv.dataelementid IN (7963,7964,7965,7966,7967,8129,8130,8131,8132,8133)
AND dv.categoryoptioncomboid = 1
AND periodtypeid=3
)o2
ON o1.organisationunitid = o2.sourceid

)sag
)sag1
GROUP BY NAME