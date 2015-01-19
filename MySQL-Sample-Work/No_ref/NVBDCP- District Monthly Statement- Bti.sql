SELECT sag1.name,
SUM(IFNULL(sag1.7455_cm,0)) AS '7455_cm',
SUM(IFNULL(sag1.7454_cm,0)) AS '7454_cm',
SUM(IFNULL(sag1.7456_cm,0)) AS '7456_cm',
SUM(IFNULL(sag1.7471_cm,0)) AS '7471_cm',
SUM(IFNULL(sag1.7472_cm,0)) AS '7472_cm',
SUM(IFNULL(sag1.7487_cm,0)) AS '7487_cm',
SUM(IFNULL(sag1.7472_um,0)) AS '7472_um',
SUM(IFNULL(sag1.7472_pm,0)) AS '7472_pm'

FROM
(
SELECT sag.organisationunitid,sag.name,
CASE WHEN sag.dataelementid=7455 AND sag.categoryoptioncomboid=1 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7455_cm',
CASE WHEN sag.dataelementid=7454 AND sag.categoryoptioncomboid=1 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7454_cm',
CASE WHEN sag.dataelementid=7456 AND sag.categoryoptioncomboid=1 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7456_cm',
CASE WHEN sag.dataelementid=7471 AND sag.categoryoptioncomboid=1 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7471_cm',
CASE WHEN sag.dataelementid=7472 AND sag.categoryoptioncomboid=10 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7472_cm',
CASE WHEN sag.dataelementid=7487 AND sag.categoryoptioncomboid=1 AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7487_cm',
CASE WHEN sag.dataelementid=7472 AND sag.categoryoptioncomboid=10 AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7472_um',
CASE WHEN sag.dataelementid=7487 AND sag.categoryoptioncomboid=1 AND sag.time LIKE 'prev_mn' THEN sag.value END AS '7472_pm'

FROM
(
	#current month	
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','cur_mn' AS 'time'
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
	WHERE dv.dataelementid IN (7455,7454,7456,7471,7472,7487)
	AND dv.categoryoptioncomboid IN (1,10)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2013-09-01')
	AND YEAR(p.startdate) = YEAR('2013-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

UNION
	
	#upto the month
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','upto_mn' AS 'time'
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
	WHERE dv.dataelementid IN (7472)
	AND dv.categoryoptioncomboid IN (1,10)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) < MONTH('2013-09-01') +1
	AND YEAR(p.startdate) = YEAR('2013-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
UNION
	
	#previous month
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','prev_mn' AS 'time'
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
	WHERE dv.dataelementid IN (7487)
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
