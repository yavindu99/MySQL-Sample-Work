
SELECT sag1.ou_name,
SUM(IFNULL(8936_curr_mn,0)) AS '8936_curr_mn',
SUM(IFNULL(7776_curr_mn,0)) AS '7776_curr_mn',
SUM(IFNULL(7087_curr_mn,0)) AS '7087_curr_mn',
SUM(IFNULL(7088_curr_mn,0)) AS '7088_curr_mn',
SUM(IFNULL(7080_curr_mn,0)) AS '7080_curr_mn',
SUM(IFNULL(7081_curr_mn,0)) AS '7081_curr_mn',
SUM(IFNULL(7082_curr_mn,0)) AS '7082_curr_mn',
SUM(IFNULL(7083_curr_mn,0)) AS '7083_curr_mn',
SUM(IFNULL(7084_curr_mn,0)) AS '7084_curr_mn',
SUM(IFNULL(7085_curr_mn,0)) AS '7085_curr_mn',
SUM(IFNULL(7086_curr_mn,0)) AS '7086_curr_mn',
SUM(IFNULL(8941_curr_mn,0)) AS '8941_curr_mn',

SUM(IFNULL(7776_las_yr,0)) AS '7776_las_yr',
SUM(IFNULL(7087_las_yr,0)) AS '7087_las_yr',
SUM(IFNULL(7088_las_yr,0)) AS '7088_las_yr',
SUM(IFNULL(7080_las_yr,0)) AS '7080_las_yr',
SUM(IFNULL(7081_las_yr,0)) AS '7081_las_yr',
SUM(IFNULL(7082_las_yr,0)) AS '7082_las_yr',
SUM(IFNULL(7083_las_yr,0)) AS '7083_las_yr',
SUM(IFNULL(7084_las_yr,0)) AS '7084_las_yr',
SUM(IFNULL(7085_las_yr,0)) AS '7085_las_yr',
SUM(IFNULL(7086_las_yr,0)) AS '7086_las_yr',

SUM(IFNULL(7776_bef_2_yr,0)) AS '7776_bef_2_yr',
SUM(IFNULL(7087_bef_2_yr,0)) AS '7087_bef_2_yr',
SUM(IFNULL(7088_bef_2_yr,0)) AS '7088_bef_2_yr',
SUM(IFNULL(7080_bef_2_yr,0)) AS '7080_bef_2_yr',
SUM(IFNULL(7081_bef_2_yr,0)) AS '7081_bef_2_yr',
SUM(IFNULL(7082_bef_2_yr,0)) AS '7082_bef_2_yr',
SUM(IFNULL(7083_bef_2_yr,0)) AS '7083_bef_2_yr',
SUM(IFNULL(7084_bef_2_yr,0)) AS '7084_bef_2_yr',
SUM(IFNULL(7085_bef_2_yr,0)) AS '7085_bef_2_yr',
SUM(IFNULL(7086_bef_2_yr,0)) AS '7086_bef_2_yr'
FROM
(	
SELECT sag.ou_name,
CASE WHEN sag.dataelementid=8936 AND sag.time='cur_mn' THEN sag.value END AS '8936_curr_mn',
CASE WHEN sag.dataelementid=7776 AND sag.time='cur_mn' THEN sag.value END AS '7776_curr_mn',
CASE WHEN sag.dataelementid=7087 AND sag.time='cur_mn' THEN sag.value END AS '7087_curr_mn',
CASE WHEN sag.dataelementid=7088 AND sag.time='cur_mn' THEN sag.value END AS '7088_curr_mn',
CASE WHEN sag.dataelementid=7080 AND sag.time='cur_mn' THEN sag.value END AS '7080_curr_mn',
CASE WHEN sag.dataelementid=7081 AND sag.time='cur_mn' THEN sag.value END AS '7081_curr_mn',
CASE WHEN sag.dataelementid=7082 AND sag.time='cur_mn' THEN sag.value END AS '7082_curr_mn',
CASE WHEN sag.dataelementid=7083 AND sag.time='cur_mn' THEN sag.value END AS '7083_curr_mn',
CASE WHEN sag.dataelementid=7084 AND sag.time='cur_mn' THEN sag.value END AS '7084_curr_mn',
CASE WHEN sag.dataelementid=7085 AND sag.time='cur_mn' THEN sag.value END AS '7085_curr_mn',
CASE WHEN sag.dataelementid=7086 AND sag.time='cur_mn' THEN sag.value END AS '7086_curr_mn',
CASE WHEN sag.dataelementid=8941 AND sag.time='cur_mn' THEN sag.value END AS '8941_curr_mn',

CASE WHEN sag.dataelementid=7776 AND sag.time='las_yr' THEN sag.value END AS '7776_las_yr',
CASE WHEN sag.dataelementid=7087 AND sag.time='las_yr' THEN sag.value END AS '7087_las_yr',
CASE WHEN sag.dataelementid=7088 AND sag.time='las_yr' THEN sag.value END AS '7088_las_yr',
CASE WHEN sag.dataelementid=7080 AND sag.time='las_yr' THEN sag.value END AS '7080_las_yr',
CASE WHEN sag.dataelementid=7081 AND sag.time='las_yr' THEN sag.value END AS '7081_las_yr',
CASE WHEN sag.dataelementid=7082 AND sag.time='las_yr' THEN sag.value END AS '7082_las_yr',
CASE WHEN sag.dataelementid=7083 AND sag.time='las_yr' THEN sag.value END AS '7083_las_yr',
CASE WHEN sag.dataelementid=7084 AND sag.time='las_yr' THEN sag.value END AS '7084_las_yr',
CASE WHEN sag.dataelementid=7085 AND sag.time='las_yr' THEN sag.value END AS '7085_las_yr',
CASE WHEN sag.dataelementid=7086 AND sag.time='las_yr' THEN sag.value END AS '7086_las_yr',

CASE WHEN sag.dataelementid=7776 AND sag.time='bef_2_yr' THEN sag.value END AS '7776_bef_2_yr',
CASE WHEN sag.dataelementid=7087 AND sag.time='bef_2_yr' THEN sag.value END AS '7087_bef_2_yr',
CASE WHEN sag.dataelementid=7088 AND sag.time='bef_2_yr' THEN sag.value END AS '7088_bef_2_yr',
CASE WHEN sag.dataelementid=7080 AND sag.time='bef_2_yr' THEN sag.value END AS '7080_bef_2_yr',
CASE WHEN sag.dataelementid=7081 AND sag.time='bef_2_yr' THEN sag.value END AS '7081_bef_2_yr',
CASE WHEN sag.dataelementid=7082 AND sag.time='bef_2_yr' THEN sag.value END AS '7082_bef_2_yr',
CASE WHEN sag.dataelementid=7083 AND sag.time='bef_2_yr' THEN sag.value END AS '7083_bef_2_yr',
CASE WHEN sag.dataelementid=7084 AND sag.time='bef_2_yr' THEN sag.value END AS '7084_bef_2_yr',
CASE WHEN sag.dataelementid=7085 AND sag.time='bef_2_yr' THEN sag.value END AS '7085_bef_2_yr',
CASE WHEN sag.dataelementid=7086 AND sag.time='bef_2_yr' THEN sag.value END AS '7086_bef_2_yr'

	
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
	WHERE dv.dataelementid IN (8936,7776,7087,7088,7080,7081,7082,7083,7084,7085,7086,8941)
	AND dv.categoryoptioncomboid IN (1)
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
	WHERE dv.dataelementid IN (7776,7087,7088,7080,7081,7082,7083,7084,7085,7086)
	AND dv.categoryoptioncomboid IN (1)
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
	WHERE dv.dataelementid IN (7776,7087,7088,7080,7081,7082,7083,7084,7085,7086)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')-2
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
)sag
)sag1

GROUP BY sag1.ou_name