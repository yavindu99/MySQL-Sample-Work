#District Wise 
SELECT sag1.name,sag1.district,
SUM(IFNULL(sag1.5184_1,0)) AS '5184_1',
SUM(IFNULL(sag1.2885_1,0)) AS '2885_1',
SUM(IFNULL(sag1.5185_1,0)) AS '5185_1',
SUM(IFNULL(sag1.2739_1,0)) AS '2739_1',
SUM(IFNULL(sag1.5186_1,0)) AS '5186_1',
SUM(IFNULL(sag1.5187_1,0)) AS '5187_1',
SUM(IFNULL(sag1.5188_1,0)) AS '5188_1',
SUM(IFNULL(sag1.5189_1,0)) AS '5189_1',
SUM(IFNULL(sag1.5190_1,0)) AS '5190_1',
SUM(IFNULL(sag1.6179_1,0)) AS '6179_1',
SUM(IFNULL(sag1.5191_1,0)) AS '5191_1',
SUM(IFNULL(sag1.5192_1,0)) AS '5192_1',
SUM(IFNULL(sag1.5193_1,0)) AS '5193_1',
SUM(IFNULL(sag1.5194_1,0)) AS '5194_1',
SUM(IFNULL(sag1.5195_1,0)) AS '5195_1',
SUM(IFNULL(sag1.5629_1,0)) AS '5629_1',
SUM(IFNULL(sag1.5630_1,0)) AS '5630_1',
SUM(IFNULL(sag1.5196_1,0)) AS '5196_1',
SUM(IFNULL(sag1.6087_1,0)) AS '6087_1'

FROM
(
SELECT sag.name,sag.district,sag.unit_name,
CASE WHEN sag.dataelementid=5184 THEN sag.value END AS '5184_1',
CASE WHEN sag.dataelementid=2885 THEN sag.value END AS '2885_1',
CASE WHEN sag.dataelementid=5185 THEN sag.value END AS '5185_1',
CASE WHEN sag.dataelementid=2739 THEN sag.value END AS '2739_1',
CASE WHEN sag.dataelementid=5186 THEN sag.value END AS '5186_1',
CASE WHEN sag.dataelementid=5187 THEN sag.value END AS '5187_1',
CASE WHEN sag.dataelementid=5188 THEN sag.value END AS '5188_1',
CASE WHEN sag.dataelementid=5189 THEN sag.value END AS '5189_1',
CASE WHEN sag.dataelementid=5190 THEN sag.value END AS '5190_1',
CASE WHEN sag.dataelementid=6179 THEN sag.value END AS '6179_1',
CASE WHEN sag.dataelementid=5191 THEN sag.value END AS '5191_1',
CASE WHEN sag.dataelementid=5192 THEN sag.value END AS '5192_1',
CASE WHEN sag.dataelementid=5193 THEN sag.value END AS '5193_1',
CASE WHEN sag.dataelementid=5194 THEN sag.value END AS '5194_1',
CASE WHEN sag.dataelementid=5195 THEN sag.value END AS '5195_1',
CASE WHEN sag.dataelementid=5629 THEN sag.value END AS '5629_1',
CASE WHEN sag.dataelementid=5630 THEN sag.value END AS '5630_1',
CASE WHEN sag.dataelementid=5196 THEN sag.value END AS '5196_1',
CASE WHEN sag.dataelementid=6087 THEN sag.value END AS '6087_1'

FROM
(
SELECT asd.name,asd.district,asd.unit_name,asd.gname,asd1.dataelementid,asd1.value
FROM

(
SELECT ou.name,ou2.organisationunitid,ou2.name AS 'unit_name',og.name AS 'gname',ou1.name AS 'district'
FROM orgunitgroupmembers ogm 
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid=og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid=os.idlevel3
INNER JOIN organisationunit ou1 ON ou1.organisationunitid=os.idlevel4
INNER JOIN organisationunit ou2 ON ou2.organisationunitid=os.organisationunitid
WHERE og.name IN ('District Group','Rural Group','DH Group', 'GH Group', 'WH Group', 'MCL Group', 'SDH 100 Group', 'SDH 50 Group', 'RH Group', 'PHC Group', 'SC')
AND ou.name LIKE 'Akola Circle'
AND ou1.name LIKE 'AKOLA District'
)asd

LEFT JOIN 

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (5184,2885,5185,2739,5186,5187,5188,5189,5190,6179,5191,5192,5193,5194,5195,5629,5630,5196,6087)
AND dv.categoryoptioncomboid IN (1)
AND MONTH(p.startdate) = MONTH('2013-11-01')
AND YEAR(p.startdate) = YEAR('2013-11-01')
AND periodtypeid = 3
)asd1

ON asd1.sourceid=asd.organisationunitid
)sag
)sag1

GROUP BY sag1.name

