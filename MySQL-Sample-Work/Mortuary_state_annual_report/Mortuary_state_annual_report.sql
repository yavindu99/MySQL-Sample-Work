SELECT sag1.name,sag1.ou_name,
SUM(IFNULL(sag1.6067_1,0)) '6067_1',
SUM(IFNULL(sag1.6067_2,0)) '6067_2',
SUM(IFNULL(sag1.6067_3,0)) '6067_3',
SUM(IFNULL(sag1.6067_4,0)) '6067_4',
SUM(IFNULL(sag1.6067_5,0)) '6067_5',
SUM(IFNULL(sag1.6067_6,0)) '6067_6',
SUM(IFNULL(sag1.6067_7,0)) '6067_7',
SUM(IFNULL(sag1.6067_8,0)) '6067_8',
SUM(IFNULL(sag1.6067_9,0)) '6067_9',
SUM(IFNULL(sag1.6067_10,0)) '6067_10',
SUM(IFNULL(sag1.6067_11,0)) '6067_11',
SUM(IFNULL(sag1.6067_12,0)) '6067_12',

SUM(IFNULL(sag1.6172_1,0)) '6172_1',
SUM(IFNULL(sag1.6173_1,0)) '6173_1',
SUM(IFNULL(sag1.6174_1,0)) '6174_1',

IFNULL(GROUP_CONCAT(sag1.6171_1),'') '6171_1',
IFNULL(GROUP_CONCAT(sag1.6175_1),'') '6175_1',
IFNULL(GROUP_CONCAT(sag1.6176_1),'') '6176_1'


FROM
(
SELECT sag.name,sag.ou_name,
CASE WHEN sag.dataelementid=6067 AND sag.month=1 THEN sag.value END AS '6067_1',
CASE WHEN sag.dataelementid=6067 AND sag.month=2 THEN sag.value END AS '6067_2',
CASE WHEN sag.dataelementid=6067 AND sag.month=3 THEN sag.value END AS '6067_3',
CASE WHEN sag.dataelementid=6067 AND sag.month=4 THEN sag.value END AS '6067_4',
CASE WHEN sag.dataelementid=6067 AND sag.month=5 THEN sag.value END AS '6067_5',
CASE WHEN sag.dataelementid=6067 AND sag.month=6 THEN sag.value END AS '6067_6',
CASE WHEN sag.dataelementid=6067 AND sag.month=7 THEN sag.value END AS '6067_7',
CASE WHEN sag.dataelementid=6067 AND sag.month=8 THEN sag.value END AS '6067_8',
CASE WHEN sag.dataelementid=6067 AND sag.month=9 THEN sag.value END AS '6067_9',
CASE WHEN sag.dataelementid=6067 AND sag.month=10 THEN sag.value END AS '6067_10',
CASE WHEN sag.dataelementid=6067 AND sag.month=11 THEN sag.value END AS '6067_11',
CASE WHEN sag.dataelementid=6067 AND sag.month=12 THEN sag.value END AS '6067_12',

CASE WHEN sag.dataelementid=6171 THEN sag.value END AS '6171_1',
CASE WHEN sag.dataelementid=6172 THEN sag.value END AS '6172_1',
CASE WHEN sag.dataelementid=6173 THEN sag.value END AS '6173_1',
CASE WHEN sag.dataelementid=6174 THEN sag.value END AS '6174_1',
CASE WHEN sag.dataelementid=6175 THEN sag.value END AS '6175_1',
CASE WHEN sag.dataelementid=6176 THEN sag.value END AS '6176_1'


FROM
(
SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(IFNULL(asd1.value,0)) AS 'value',asd1.year,asd1.month
FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('PHSC DH','PHSC SDH','PHSC CHC')
	#AND ou.name LIKE 'Ludhiana District'
	)asd

	LEFT JOIN

	(	
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,YEAR(p.startdate) AS 'year',MONTH(p.startdate) AS 'month'
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6067)
	AND dv.categoryoptioncomboid IN (1)
	AND MONTH(p.startdate) <= MONTH('2014-03-01')
	AND YEAR(p.startdate) = YEAR('2014-03-01')
	AND periodtypeid = 3
	)asd1	
	
ON asd1.sourceid=asd.organisationunitid
GROUP BY asd1.month,asd.name,asd.ou_name

UNION

SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value',asd1.year,asd1.month
FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('PHSC DH','PHSC SDH','PHSC CHC')
	#AND ou.name LIKE 'Ludhiana District'
	)asd

	LEFT JOIN

	(	
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,YEAR(p.startdate) AS 'year',MONTH(p.startdate) AS 'month'
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6171,6172,6173,6174,6175,6175,6176)
	AND dv.categoryoptioncomboid IN (1)
	AND MONTH(p.startdate) = MONTH('2014-11-01')
	AND YEAR(p.startdate) = YEAR('2014-11-01')
	AND periodtypeid = 3
	)asd1	
	
ON asd1.sourceid=asd.organisationunitid


)sag
)sag1

GROUP BY sag1.name,sag1.ou_name