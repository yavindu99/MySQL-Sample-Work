SELECT sag1.name,
SUM(IFNULL(sag1.6765_7,0)) AS '6765_7',
SUM(IFNULL(sag1.6765_8,0)) AS '6765_8',
SUM(IFNULL(sag1.6769_1,0)) AS '6769_1',
SUM(IFNULL(sag1.6770_1,0)) AS '6770_1',
SUM(IFNULL(sag1.6771_1,0)) AS '6771_1',
SUM(IFNULL(sag1.6772_1,0)) AS '6772_1',
SUM(IFNULL(sag1.6773_1,0)) AS '6773_1',
SUM(IFNULL(sag1.6774_1,0)) AS '6774_1',
SUM(IFNULL(sag1.6775_1,0)) AS '6775_1'



FROM
(
SELECT sag.organisationunitid,sag.name,
CASE WHEN sag.dataelementid=6765 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '6765_7',
CASE WHEN sag.dataelementid=6765 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '6765_8',
CASE WHEN sag.dataelementid=6769 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6769_1',
CASE WHEN sag.dataelementid=6770 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6770_1',
CASE WHEN sag.dataelementid=6771 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6771_1',
CASE WHEN sag.dataelementid=6772 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6772_1',
CASE WHEN sag.dataelementid=6773 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6773_1',
CASE WHEN sag.dataelementid=6774 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6774_1',
CASE WHEN sag.dataelementid=6775 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6775_1'


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
WHERE og.name IN ('Sub District Hospitals','District Hospitals','Medical College')

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (6765,6765,6769,6770,6771,6772,6773,6774,6775)
AND dv.categoryoptioncomboid IN (1,7,8)
AND p.startdate BETWEEN '2013-10-01' AND '2013-10-31'
AND periodtypeid = 3
)asd1

ON asd.organisationunitid = asd1.sourceid

)sag
)sag1
GROUP BY sag1.name
