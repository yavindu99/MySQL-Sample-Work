SELECT sag1.name,
SUM(IFNULL(sag1.7450_cm,0)) AS '7450_cm',
SUM(IFNULL(sag1.7448_cm,0)) AS '7448_cm',
SUM(IFNULL(sag1.7449_cm,0)) AS '7449_cm',
SUM(IFNULL(sag1.7467_cm,0)) AS '7467_cm',
SUM(IFNULL(sag1.7468_cm,0)) AS '7468_cm',
SUM(IFNULL(sag1.7483_cm,0)) AS '7483_cm',
SUM(IFNULL(sag1.7468_um,0)) AS '7468_um',
SUM(IFNULL(sag1.7483_pm,0)) AS '7483_pm'

FROM
(
SELECT sag.organisationunitid,sag.name,
CASE WHEN sag.dataelementid=7450 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7450_cm',
CASE WHEN sag.dataelementid=7448 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7448_cm',
CASE WHEN sag.dataelementid=7449 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7449_cm',
CASE WHEN sag.dataelementid=7467 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7467_cm',
CASE WHEN sag.dataelementid=7468 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7468_cm',
CASE WHEN sag.dataelementid=7483 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7483_cm',
CASE WHEN sag.dataelementid=7468 AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7468_um',
CASE WHEN sag.dataelementid=7483 AND sag.time LIKE 'prev_mn' THEN sag.value END AS '7483_pm'

FROM
(
	#current month	
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','cur_mn' AS 'time',MONTH(startdate)
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('Sub District Hospitals','District Hospitals','Medical College','CHCs','PHCs','RH','Sub Centres')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (7450,7448,7449,7467,7468,7483)
	AND dv.categoryoptioncomboid IN (1,10)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2013-09-01')
	AND YEAR(p.startdate) = YEAR('2013-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

UNION
	
	#upto the month
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','upto_mn' AS 'time',MONTH(startdate)
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('Sub District Hospitals','District Hospitals','Medical College','CHCs','PHCs','RH','Sub Centres')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (7468)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) < MONTH('2013-09-01') +1
	AND YEAR(p.startdate) = YEAR('2013-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
UNION
	
	#previous month
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','prev_mn' AS 'time',MONTH(startdate)
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('Sub District Hospitals','District Hospitals','Medical College','CHCs','PHCs','RH','Sub Centres')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (7483)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate)= MONTH('2013-09-01') -1
	AND YEAR(p.startdate) = YEAR('2013-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid


)sag
)sag1
GROUP BY sag1.name
