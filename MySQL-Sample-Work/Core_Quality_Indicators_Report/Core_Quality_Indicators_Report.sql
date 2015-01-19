SELECT sag2.name,sag2.gname,
SUM(IFNULL(sag2.8936_1_c,0)) AS 'FB',
SUM(IFNULL(sag2.6061_7_c,0)+IFNULL(sag2.6061_8_c,0)+IFNULL(sag2.7769_7_c,0)+IFNULL(sag2.7769_8_c,0)) AS 'OP',
SUM(IFNULL(sag2.123_1_c,0)+IFNULL(sag2.124_1_c,0)+IFNULL(sag2.125_1_c,0)+IFNULL(sag2.126_1_c,0)) AS 'IP',
SUM(IFNULL(sag2.7775_7_c,0)+IFNULL(sag2.7775_8_c,0)+IFNULL(sag2.8961_7_c,0)+IFNULL(sag2.8961_8_c,0)) AS 'MiS',
SUM(IFNULL(sag2.7776_7_c,0)+IFNULL(sag2.7776_8_c,0)+IFNULL(sag2.8962_7_c,0)+IFNULL(sag2.8962_8_c,0)) AS 'MaS',
SUM(IFNULL(sag2.1253_1_c,0)+IFNULL(sag2.1254_1_c,0)) AS 'De',
SUM(IFNULL(sag2.6068_1_c,0)+IFNULL(sag2.6070_1_c,0)) AS 'RI',
SUM(IFNULL(sag2.6071_1_c,0)) AS 'LT',

' ' AS 'OI',

SUM(IFNULL(sag2.6073_1_c,0)) AS 'WM',
SUM(IFNULL(sag2.6074_1_c,0)) AS 'CWT',
SUM(IFNULL(sag2.6075_1_c,0)) AS 'AD',
SUM(IFNULL(sag2.6076_1_c,0)) AS 'DR',
SUM(IFNULL(sag2.6072_1_c,0)) AS 'UCCP',
SUM(IFNULL(sag2.8946_1_c,0)) AS 'UCCM',
SUM(IFNULL(sag2.6072_1_p,0)) AS 'UCPP',
SUM(IFNULL(sag2.8946_1_p,0)) AS 'UCPM'


FROM
(
SELECT sag1.name,sag1.gname,
CASE WHEN sag1.dataelementid=8936 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '8936_1_c',
CASE WHEN sag1.dataelementid=6061 AND sag1.categoryoptioncomboid=7 AND sag1.time='curr_mon' THEN sag1.value END AS '6061_7_c',
CASE WHEN sag1.dataelementid=6061 AND sag1.categoryoptioncomboid=8 AND sag1.time='curr_mon' THEN sag1.value END AS '6061_8_c',
CASE WHEN sag1.dataelementid=7769 AND sag1.categoryoptioncomboid=7 AND sag1.time='curr_mon' THEN sag1.value END AS '7769_7_c',
CASE WHEN sag1.dataelementid=7769 AND sag1.categoryoptioncomboid=8 AND sag1.time='curr_mon' THEN sag1.value END AS '7769_8_c',
CASE WHEN sag1.dataelementid=123 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '123_1_c',
CASE WHEN sag1.dataelementid=124 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '124_1_c',
CASE WHEN sag1.dataelementid=125 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '125_1_c',
CASE WHEN sag1.dataelementid=126 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '126_1_c',
CASE WHEN sag1.dataelementid=7775 AND sag1.categoryoptioncomboid=7 AND sag1.time='curr_mon' THEN sag1.value END AS '7775_7_c',
CASE WHEN sag1.dataelementid=7775 AND sag1.categoryoptioncomboid=8 AND sag1.time='curr_mon' THEN sag1.value END AS '7775_8_c',
CASE WHEN sag1.dataelementid=8961 AND sag1.categoryoptioncomboid=7 AND sag1.time='curr_mon' THEN sag1.value END AS '8961_7_c',
CASE WHEN sag1.dataelementid=8961 AND sag1.categoryoptioncomboid=8 AND sag1.time='curr_mon' THEN sag1.value END AS '8961_8_c',
CASE WHEN sag1.dataelementid=7776 AND sag1.categoryoptioncomboid=7 AND sag1.time='curr_mon' THEN sag1.value END AS '7776_7_c',
CASE WHEN sag1.dataelementid=7776 AND sag1.categoryoptioncomboid=8 AND sag1.time='curr_mon' THEN sag1.value END AS '7776_8_c',
CASE WHEN sag1.dataelementid=8962 AND sag1.categoryoptioncomboid=7 AND sag1.time='curr_mon' THEN sag1.value END AS '8962_7_c',
CASE WHEN sag1.dataelementid=8962 AND sag1.categoryoptioncomboid=8 AND sag1.time='curr_mon' THEN sag1.value END AS '8962_8_c',
CASE WHEN sag1.dataelementid=1253 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '1253_1_c',
CASE WHEN sag1.dataelementid=1254 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '1254_1_c',
CASE WHEN sag1.dataelementid=6068 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '6068_1_c',
CASE WHEN sag1.dataelementid=6070 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '6070_1_c',
CASE WHEN sag1.dataelementid=6071 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '6071_1_c',
CASE WHEN sag1.dataelementid=6073 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '6073_1_c',
CASE WHEN sag1.dataelementid=6074 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '6074_1_c',
CASE WHEN sag1.dataelementid=6075 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '6075_1_c',
CASE WHEN sag1.dataelementid=6076 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '6076_1_c',
CASE WHEN sag1.dataelementid=6072 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '6072_1_c',
CASE WHEN sag1.dataelementid=8946 AND sag1.categoryoptioncomboid=1 AND sag1.time='curr_mon' THEN sag1.value END AS '8946_1_c',
CASE WHEN sag1.dataelementid=6072 AND sag1.categoryoptioncomboid=1 AND sag1.time='pre_year' THEN sag1.value END AS '6072_1_p',
CASE WHEN sag1.dataelementid=8946 AND sag1.categoryoptioncomboid=1 AND sag1.time='pre_year' THEN sag1.value END AS '8946_1_p'


FROM
(
SELECT sag.name,sag.gname,sag.dataelementid,sag.categoryoptioncomboid,sag.time,SUM(IFNULL(sag.value,0)) AS 'value'
FROM
  
(
	SELECT asd.organisationunitid,asd.name,asd.gname,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','curr_mon' AS 'time'
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('PHSC CHC')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (8936,6061,7769,123,124,125,126,7775,8961,7776,8962,1254,1253,6068,6070,6071,6073,6074,6075,6076,6072,8946)
	AND dv.categoryoptioncomboid IN (1,7,8)
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

UNION

	SELECT asd.organisationunitid,asd.name,asd.gname,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','pre_year' AS 'time'
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('PHSC CHC')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6072,8946)
	AND dv.categoryoptioncomboid IN (1)
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')-1
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

)sag
GROUP BY sag.name,sag.gname,sag.dataelementid,sag.categoryoptioncomboid,sag.time
##################
UNION
	
SELECT sag.name,sag.gname,sag.dataelementid,sag.categoryoptioncomboid,sag.time,SUM(IFNULL(sag.value,0)) AS 'value'
FROM
  
  (
	SELECT asd.organisationunitid,asd.name,asd.gname,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','curr_mon' AS 'time'
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('PHSC SDH')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (8936,6061,6061,7769,7769,123,124,125,126,7775,8961,7776,8962,1254,1253,6068,6070,6071,6073,6074,6075,6076,6072,8946)
	AND dv.categoryoptioncomboid IN (1,7,8)
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

UNION

	SELECT asd.organisationunitid,asd.name,asd.gname,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','pre_year' AS 'time'
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('PHSC SDH')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6072,8946)
	AND dv.categoryoptioncomboid IN (1)
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')-1
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

)sag
GROUP BY sag.name,sag.gname,sag.dataelementid,sag.categoryoptioncomboid,sag.time
#####################
UNION	
		
SELECT sag.name,sag.gname,sag.dataelementid,sag.categoryoptioncomboid,sag.time,SUM(IFNULL(sag.value,0)) AS 'value'
FROM
  
  (
	SELECT asd.organisationunitid,asd.name,asd.gname,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','curr_mon' AS 'time'
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('PHSC DH')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (8936,6061,6061,7769,7769,123,124,125,126,7775,8961,7776,8962,1254,1253,6068,6070,6071,6073,6074,6075,6076,6072,8946)
	AND dv.categoryoptioncomboid IN (1,7,8)
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

UNION

	SELECT asd.organisationunitid,asd.name,asd.gname,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','pre_year' AS 'time'
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('PHSC DH')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6072,8946)
	AND dv.categoryoptioncomboid IN (1)
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')-1
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

)sag
GROUP BY sag.name,sag.gname,sag.dataelementid,sag.categoryoptioncomboid,sag.time

)sag1
)sag2

GROUP BY sag2.name,sag2.gname