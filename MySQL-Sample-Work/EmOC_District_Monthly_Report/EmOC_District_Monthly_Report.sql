SELECT sag1.name,sag1.unit_name,
SUM(IFNULL(sag1.5873_1,0)) AS '5873_1',
SUM(IFNULL(sag1.5874_1,0)) AS '5874_1',
SUM(IFNULL(sag1.5875_1,0)) AS '5875_1',
SUM(IFNULL(sag1.5876_1,0)) AS '5876_1',
SUM(IFNULL(sag1.5877_1,0)) AS '5877_1'

FROM
(
SELECT sag.organisationunitid,sag.unit_name,sag.name,
CASE WHEN sag.dataelementid=5873 THEN sag.value END AS '5873_1',
CASE WHEN sag.dataelementid=5874 THEN sag.value END AS '5874_1',
CASE WHEN sag.dataelementid=5875 THEN sag.value END AS '5875_1',
CASE WHEN sag.dataelementid=5876 THEN sag.value END AS '5876_1',
CASE WHEN sag.dataelementid=5877 THEN sag.value END AS '5877_1'

FROM
(
SELECT asd.organisationunitid,asd.idlevel3, asd.name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,asd.unit_name
FROM
(
SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,ou1.name AS 'unit_name',os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid=os.idlevel3
INNER JOIN organisationunit ou1 ON ou1.organisationunitid=os.organisationunitid
WHERE og.name IN ('PHSC DH','PHSC SDH','PHSC CHC')
AND ou.name LIKE ('BARNALA District')

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (5873,5874,5875,5876,5877)
AND dv.categoryoptioncomboid IN (1)
AND MONTH(p.startdate)=MONTH('2013-11-01')
AND YEAR(p.startdate)=YEAR('2013-11-01')
AND periodtypeid = 3
)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1
GROUP BY sag1.name,sag1.unit_name