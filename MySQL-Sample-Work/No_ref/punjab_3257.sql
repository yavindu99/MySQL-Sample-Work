SELECT sag1.name,
SUM(IFNULL(sag1.7885,0)) AS '7885',
SUM(IFNULL(sag1.7886,0)) AS '7886',
SUM(IFNULL(sag1.7887,0)) AS '7887',
SUM(IFNULL(sag1.7888,0)) AS '7888',
SUM(IFNULL(sag1.7906,0)) AS '7906',
SUM(IFNULL(sag1.7907,0)) AS '7907',
SUM(IFNULL(sag1.7908,0)) AS '7908',
SUM(IFNULL(sag1.7910,0)) AS '7910',
SUM(IFNULL(sag1.7912,0)) AS '7912',
SUM(IFNULL(sag1.7988,0)) AS '7988',
SUM(IFNULL(sag1.7913,0)) AS '7913',
SUM(IFNULL(sag1.7989,0)) AS '7989',
SUM(IFNULL(sag1.7902,0)) AS '7902',
SUM(IFNULL(sag1.7903,0)) AS '7903',
SUM(IFNULL(sag1.7914,0)) AS '7914',
SUM(IFNULL(sag1.7990,0)) AS '7990',
SUM(IFNULL(sag1.7915,0)) AS '7915',
SUM(IFNULL(sag1.7991,0)) AS '7991',
SUM(IFNULL(sag1.7909,0)) AS '7909',
SUM(IFNULL(sag1.7911,0)) AS '7911'


FROM
(
SELECT sag.idlevel3,ou.name,
CASE WHEN sag.dataelementid IN (7885) THEN sag.value END AS '7885',
CASE WHEN sag.dataelementid IN (7886) THEN sag.value END AS '7886',
CASE WHEN sag.dataelementid IN (7887) THEN sag.value END AS '7887',
CASE WHEN sag.dataelementid IN (7888) THEN sag.value END AS '7888',
CASE WHEN sag.dataelementid IN (7906) THEN sag.value END AS '7906',
CASE WHEN sag.dataelementid IN (7907) THEN sag.value END AS '7907',
CASE WHEN sag.dataelementid IN (7908) THEN sag.value END AS '7908',
CASE WHEN sag.dataelementid IN (7910) THEN sag.value END AS '7910',
CASE WHEN sag.dataelementid IN (7912) THEN sag.value END AS '7912',
CASE WHEN sag.dataelementid IN (7988) THEN sag.value END AS '7988',
CASE WHEN sag.dataelementid IN (7913) THEN sag.value END AS '7913',
CASE WHEN sag.dataelementid IN (7989) THEN sag.value END AS '7989',
CASE WHEN sag.dataelementid IN (7902) THEN sag.value END AS '7902',
CASE WHEN sag.dataelementid IN (7903) THEN sag.value END AS '7903',
CASE WHEN sag.dataelementid IN (7914) THEN sag.value END AS '7914',
CASE WHEN sag.dataelementid IN (7990) THEN sag.value END AS '7990',
CASE WHEN sag.dataelementid IN (7915) THEN sag.value END AS '7915',
CASE WHEN sag.dataelementid IN (7991) THEN sag.value END AS '7991',
CASE WHEN sag.dataelementid IN (7909) THEN sag.value END AS '7909',
CASE WHEN sag.dataelementid IN (7911) THEN sag.value END AS '7911'


FROM 
(
#current month
SELECT asd.idlevel3,asd1.dataelementid,IFNULL(asd1.value,0) AS 'value'
FROM
(
SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('Sub District Hospitals','District Hospitals','CHCs')
)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7885,7886,7887,7888,7906,7907,7908,7910,7912,7988,7913,7989,7902,7903,7914,7990,7915,7991,7909,7911)
AND dv.categoryoptioncomboid IN (1)
AND MONTH(p.startdate) = MONTH('2013-10-01')
AND YEAR(p.startdate) = YEAR('2013-10-31')
AND periodtypeid = 3
)asd1
ON asd.organisationunitid = asd1.sourceid

)sag
INNER JOIN organisationunit ou ON ou.organisationunitid=sag.idlevel3
)sag1
GROUP BY sag1.name
