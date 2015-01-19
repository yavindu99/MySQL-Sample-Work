SELECT sag1.name,
SUM(IFNULL(sag1.7661_1,0)) AS '7661_1',
SUM(IFNULL(sag1.8116_1,0)) AS '8116_1',
SUM(IFNULL(sag1.7659_1,0)) AS '7659_1',
SUM(IFNULL(sag1.7662_1,0)) AS '7662_1',
SUM(IFNULL(sag1.8115_1,0)) AS '8115_1',
SUM(IFNULL(sag1.7660_1,0)) AS '7660_1',
SUM(IFNULL(sag1.7663_1,0)) AS '7663_1',
SUM(IFNULL(sag1.8117_1,0)) AS '8117_1',

SUM(IFNULL(sag1.7502_7,0)) AS '7502_7',
SUM(IFNULL(sag1.7503_7,0)) AS '7503_7',
SUM(IFNULL(sag1.7504_7,0)) AS '7504_7',
SUM(IFNULL(sag1.7505_7,0)) AS '7505_7',
SUM(IFNULL(sag1.7506_7,0)) AS '7506_7',
SUM(IFNULL(sag1.8067_7,0)) AS '8067_7',
SUM(IFNULL(sag1.8068_7,0)) AS '8068_7',
SUM(IFNULL(sag1.8069_7,0)) AS '8069_7',
SUM(IFNULL(sag1.8070_7,0)) AS '8070_7',
SUM(IFNULL(sag1.8071_7,0)) AS '8071_7',

SUM(IFNULL(sag1.7502_8,0)) AS '7502_8',
SUM(IFNULL(sag1.7503_8,0)) AS '7503_8',
SUM(IFNULL(sag1.7504_8,0)) AS '7504_8',
SUM(IFNULL(sag1.7505_8,0)) AS '7505_8',
SUM(IFNULL(sag1.7506_8,0)) AS '7506_8',
SUM(IFNULL(sag1.8067_8,0)) AS '8067_8',
SUM(IFNULL(sag1.8068_8,0)) AS '8068_8',
SUM(IFNULL(sag1.8069_8,0)) AS '8069_8',
SUM(IFNULL(sag1.8070_8,0)) AS '8070_8',
SUM(IFNULL(sag1.8071_8,0)) AS '8071_8'

FROM
(
SELECT sag.name,
CASE WHEN sag.dataelementid=7661 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7661_1',
CASE WHEN sag.dataelementid=8116 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '8116_1',
CASE WHEN sag.dataelementid=7659 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7659_1',
CASE WHEN sag.dataelementid=7662 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7662_1',
CASE WHEN sag.dataelementid=8115 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '8115_1',
CASE WHEN sag.dataelementid=7660 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7660_1',
CASE WHEN sag.dataelementid=7663 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7663_1',
CASE WHEN sag.dataelementid=8117 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '8117_1',

CASE WHEN sag.dataelementid=7502 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7502_7',
CASE WHEN sag.dataelementid=7503 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7503_7',
CASE WHEN sag.dataelementid=7504 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7504_7',
CASE WHEN sag.dataelementid=7505 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7505_7',
CASE WHEN sag.dataelementid=7506 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7506_7',
CASE WHEN sag.dataelementid=8067 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '8067_7',
CASE WHEN sag.dataelementid=8068 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '8068_7',
CASE WHEN sag.dataelementid=8069 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '8069_7',
CASE WHEN sag.dataelementid=8070 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '8070_7',
CASE WHEN sag.dataelementid=8071 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '8071_7',

CASE WHEN sag.dataelementid=7502 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7502_8',
CASE WHEN sag.dataelementid=7503 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7503_8',
CASE WHEN sag.dataelementid=7504 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7504_8',
CASE WHEN sag.dataelementid=7505 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7505_8',
CASE WHEN sag.dataelementid=7506 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7506_8',
CASE WHEN sag.dataelementid=8067 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '8067_8',
CASE WHEN sag.dataelementid=8068 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '8068_8',
CASE WHEN sag.dataelementid=8069 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '8069_8',
CASE WHEN sag.dataelementid=8070 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '8070_8',
CASE WHEN sag.dataelementid=8071 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '8071_8'

FROM

(
SELECT asd.organisationunitid,asd.idlevel4, asd.name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,asd.gname
FROM
(
SELECT os.organisationunitid,os.idlevel4,og.name AS 'gname',ou1.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou1 ON ou1.organisationunitid = os.idlevel4
INNER JOIN orgunitgroupmembers ogm1 ON ogm1.organisationunitid = ou1.organisationunitid
WHERE og.name IN ('Sub District Hospitals','District Hospitals','Medical College','PHCs','CHCs','RH')
AND ogm1.orgunitgroupid = 10 
AND  ou.name LIKE 'Ludhiana District'

#Group by ou1.name
)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7658,7661,8116,7659,7662,8115,7660,7663,8117,7502,7503,7504,7505,7506,8067,8068,8069,8070,8071)
AND dv.categoryoptioncomboid IN (1,7,8)
AND p.startdate BETWEEN '2013-09-01' AND '2013-09-30'
AND periodtypeid = 3
)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1
GROUP BY sag1.name