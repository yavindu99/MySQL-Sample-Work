SELECT  sag2.name,
IFNULL(sag2.double,0) AS 'double',
IFNULL(sag2.categoryoptioncomboid,0) AS 'categoryoptioncomboid',
SUM(IFNULL(sag2.cm1,0)) AS 'cm1',
SUM(IFNULL(sag2.cm2,0)) AS 'cm2',
SUM(IFNULL(sag2.lm1,0)) AS 'lm1',
SUM(IFNULL(sag2.lm2,0)) AS 'lm2',
SUM(IFNULL(sag2.ly1,0)) AS 'ly1',
SUM(IFNULL(sag2.ly2,0)) AS 'ly2'

FROM
(
SELECT sag1.name,sag1.dataelementid,sag1.categoryoptioncomboid,
CASE WHEN dataelementid IN (6743,6765) THEN '6743_6765'
WHEN dataelementid IN (6744,6766) THEN '6744_6766' END AS 'double',
SUM(IFNULL(sag1.cm1,0)) AS 'cm1',
SUM(IFNULL(sag1.cm2,0)) AS 'cm2',
SUM(IFNULL(sag1.lm1,0)) AS 'lm1',

SUM(IFNULL(sag1.lm2,0)) AS 'lm2',

SUM(IFNULL(sag1.ly1,0)) AS 'ly1',

SUM(IFNULL(sag1.ly2,0)) AS 'ly2'

FROM
(
SELECT sag.idlevel3,ou.name,sag.dataelementid,sag.categoryoptioncomboid,
CASE WHEN sag.dataelementid IN (6743,6744) AND sag.time LIKE 'cur_mn' THEN sag.value END AS 'cm1',
CASE WHEN sag.dataelementid IN (6765,6766) AND sag.time LIKE 'cur_mn' THEN sag.value END AS 'cm2',
CASE WHEN sag.dataelementid IN (6743,6744) AND sag.time LIKE 'last_mn' THEN sag.value END AS 'lm1',
CASE WHEN sag.dataelementid IN (6765,6766) AND sag.time LIKE 'last_mn' THEN sag.value END AS 'lm2',
CASE WHEN sag.dataelementid IN (6743,6744) AND sag.time LIKE 'last_yr' THEN sag.value END AS 'ly1',
CASE WHEN sag.dataelementid IN (6765,6766) AND sag.time LIKE 'last_yr' THEN sag.value END AS 'ly2'


FROM 
(
	#current month
	SELECT asd.idlevel3,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(asd1.value) AS 'value', 'cur_mn' AS 'time'
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
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6743,6765,6744,6766)
	AND dv.categoryoptioncomboid IN (7,8)
	AND MONTH(p.startdate) = MONTH('2013-10-01')
	AND YEAR(p.startdate) = YEAR('2013-10-01')
	AND periodtypeid = 3
	)asd1
	ON asd.organisationunitid = asd1.sourceid
	GROUP BY asd.idlevel3,asd1.dataelementid,asd1.categoryoptioncomboid

UNION

	#Prevoius month
	SELECT asd.idlevel3,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(asd1.value) AS 'value','last_mn' AS 'time'
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
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6743,6765,6744,6766)
	AND dv.categoryoptioncomboid IN (7,8)
	AND MONTH(p.startdate) = MONTH('2013-10-01')-1
	AND YEAR(p.startdate) = YEAR('2013-10-01')
	AND periodtypeid = 3
	)asd1
	ON asd.organisationunitid = asd1.sourceid
	GROUP BY asd.idlevel3,asd1.dataelementid,asd1.categoryoptioncomboid

UNION

	#last year same month
	SELECT asd.idlevel3,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(asd1.value) AS 'value','last_yr' AS 'time'
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
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6743,6765,6744,6766)
	AND dv.categoryoptioncomboid IN (7,8)
	AND YEAR(p.startdate) = YEAR('2013-10-01')-1
	AND MONTH(p.startdate) = MONTH('2013-10-01')
	AND periodtypeid = 3
	)asd1
	ON asd.organisationunitid = asd1.sourceid
	GROUP BY asd.idlevel3,asd1.dataelementid,asd1.categoryoptioncomboid


)sag
INNER JOIN organisationunit ou ON ou.organisationunitid=sag.idlevel3
)sag1
GROUP BY sag1.name,sag1.dataelementid,sag1.categoryoptioncomboid
)sag2
GROUP BY sag2.name,sag2.double,sag2.categoryoptioncomboid