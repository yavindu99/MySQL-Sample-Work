
SELECT sag1.ou_name,
SUM(IFNULL(8936_curr_mn,0)) AS '8936_curr_mn',
SUM(IFNULL(123_curr_mn,0)) AS '123_curr_mn',
SUM(IFNULL(124_curr_mn,0)) AS '124_curr_mn',
SUM(IFNULL(125_curr_mn,0)) AS '125_curr_mn',
SUM(IFNULL(126_curr_mn,0)) AS '126_curr_mn',
SUM(IFNULL(8938_curr_mn,0)) AS '8938_curr_mn',

SUM(IFNULL(123_las_yr,0)) AS '123_las_yr',
SUM(IFNULL(124_las_yr,0)) AS '124_las_yr',
SUM(IFNULL(125_las_yr,0)) AS '125_las_yr',
SUM(IFNULL(126_las_yr,0)) AS '126_las_yr',

SUM(IFNULL(123_bef_2_yr,0)) AS '123_bef_2_yr',
SUM(IFNULL(124_bef_2_yr,0)) AS '124_bef_2_yr',
SUM(IFNULL(125_bef_2_yr,0)) AS '125_bef_2_yr',
SUM(IFNULL(126_bef_2_yr,0)) AS '126_bef_2_yr'
FROM
(	
SELECT sag.ou_name,
CASE WHEN sag.dataelementid=8936 AND sag.time='cur_mn' THEN sag.value END AS '8936_curr_mn',
CASE WHEN sag.dataelementid=123 AND sag.time='cur_mn' THEN sag.value END AS '123_curr_mn',
CASE WHEN sag.dataelementid=124 AND sag.time='cur_mn' THEN sag.value END AS '124_curr_mn',
CASE WHEN sag.dataelementid=125 AND sag.time='cur_mn' THEN sag.value END AS '125_curr_mn',
CASE WHEN sag.dataelementid=126 AND sag.time='cur_mn' THEN sag.value END AS '126_curr_mn',
CASE WHEN sag.dataelementid=8938 AND sag.time='cur_mn' THEN sag.value END AS '8938_curr_mn',

CASE WHEN sag.dataelementid=123 AND sag.time='las_yr' THEN sag.value END AS '123_las_yr',
CASE WHEN sag.dataelementid=124 AND sag.time='las_yr' THEN sag.value END AS '124_las_yr',
CASE WHEN sag.dataelementid=125 AND sag.time='las_yr' THEN sag.value END AS '125_las_yr',
CASE WHEN sag.dataelementid=126 AND sag.time='las_yr' THEN sag.value END AS '126_las_yr',

CASE WHEN sag.dataelementid=123 AND sag.time='bef_2_yr' THEN sag.value END AS '123_bef_2_yr',
CASE WHEN sag.dataelementid=124 AND sag.time='bef_2_yr' THEN sag.value END AS '124_bef_2_yr',
CASE WHEN sag.dataelementid=125 AND sag.time='bef_2_yr' THEN sag.value END AS '125_bef_2_yr',
CASE WHEN sag.dataelementid=126 AND sag.time='bef_2_yr' THEN sag.value END AS '126_bef_2_yr'

	
FROM	
(	
	#Current_month
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','cur_mn' AS 'time'
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('District Hospitals')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (8936,123,124,125,126,8938)
	AND dv.categoryoptioncomboid IN (1,10)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
	
UNION

	#Last_Year
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','las_yr' AS 'time'
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('District Hospitals')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (123,124,125,126)
	AND dv.categoryoptioncomboid IN (1,10)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')-1
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid	
	
UNION

	#Two_Years_Before
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','bef_2_yr' AS 'time'
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('District Hospitals')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (8936,123,124,125,126,8938)
	AND dv.categoryoptioncomboid IN (1,10)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')-2
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
)sag
)sag1

GROUP BY sag1.ou_name