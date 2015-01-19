SELECT sag1.name,sag1.ou_name,
SUM(IFNULL(sag1.8950_1,0)) AS '8950_1',
SUM(IFNULL(sag1.8951_1,0)) AS '8951_1'

FROM
(
SELECT sag.name,sag.ou_name,
CASE WHEN sag.dataelementid=8950 THEN sag.value END AS '8950_1',
CASE WHEN sag.dataelementid=8951 THEN sag.value END AS '8951_1'

FROM
(
SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value'
FROM
(
SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
WHERE og.name IN ('District Hospitals','Sub District Hospitals')
#AND ou.name LIKE 'Ludhiana District'

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (8950,8951)
AND dv.categoryoptioncomboid IN (1)
AND MONTH(p.startdate) = MONTH('2013-09-01')
AND YEAR(p.startdate) = YEAR('2013-09-01')
AND periodtypeid = 3

)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1
GROUP BY sag1.name,sag1.ou_name