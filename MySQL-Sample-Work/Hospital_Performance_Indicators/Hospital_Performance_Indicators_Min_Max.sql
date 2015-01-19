SELECT * ,'section' AS 'section'
FROM
(
#Admissions
SELECT *,'Admissions' AS 'indicators'
FROM
(
SELECT sag1.ou_name,sag1.order,sag1.name,
IFNULL(((SUM(IFNULL(123_curr_mn,0))+SUM(IFNULL(124_curr_mn,0))+SUM(IFNULL(125_curr_mn,0))+SUM(IFNULL(126_curr_mn,0)))/SUM(IFNULL(8938_curr_mn,0))),0) AS  'target_max'

FROM
(	
SELECT sag.ou_name,sag.order,sag.name,
CASE WHEN sag.dataelementid=123  THEN sag.value END AS '123_curr_mn',
CASE WHEN sag.dataelementid=124  THEN sag.value END AS '124_curr_mn',
CASE WHEN sag.dataelementid=125  THEN sag.value END AS '125_curr_mn',
CASE WHEN sag.dataelementid=126  THEN sag.value END AS '126_curr_mn',
CASE WHEN sag.dataelementid=8938 THEN sag.value END AS '8938_curr_mn'
	
FROM	
(	
	
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','1' AS 'order'
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
	WHERE dv.dataelementid IN (123,124,125,126,8938)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2014-09-01')
	AND YEAR(p.startdate) = YEAR('2014-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
)sag
)sag1

GROUP BY sag1.ou_name,sag1.order
ORDER BY target_max DESC LIMIT 2
)sag2


UNION ALL


#Out_Patients
SELECT * ,'OPD' AS 'indicators'
FROM
( 
SELECT sag1.ou_name,sag1.order,sag1.name,
IFNULL((SUM(IFNULL(130_curr_mn,0))/SUM(IFNULL(8937_curr_mn,0))),0) AS 'target_max'

FROM
(	
SELECT sag.ou_name,sag.order,sag.name,
CASE WHEN sag.dataelementid=130  THEN sag.value END AS '130_curr_mn',
CASE WHEN sag.dataelementid=8937  THEN sag.value END AS '8937_curr_mn'



	
FROM	
(	
	
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','2' AS 'order'
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
	WHERE dv.dataelementid IN (8936,130,8937)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2014-09-01')
	AND YEAR(p.startdate) = YEAR('2014-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
	

)sag
)sag1

GROUP BY sag1.ou_name
ORDER BY target_max DESC LIMIT 2
)sag2



UNION ALL

#Bed_Occupancy_Rate
SELECT *,'BOR' AS 'indicators' 
FROM
( 
SELECT sag1.ou_name,sag1.order,sag1.name,
IFNULL(((SUM(IFNULL(129_curr_mn,0))+SUM(IFNULL(7778_curr_mn,0)))/SUM(IFNULL(8939_curr_mn,0))),0) AS 'target_max'

FROM
(	

SELECT sag.ou_name,sag.order,sag.name,
CASE WHEN sag.dataelementid=129 THEN sag.value END AS '129_curr_mn',
CASE WHEN sag.dataelementid=7778 THEN sag.value END AS '7778_curr_mn',
CASE WHEN sag.dataelementid=8939 THEN sag.value END AS '8939_curr_mn'

FROM	
(	
	
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','3' AS 'order'
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
	WHERE dv.dataelementid IN (129,7778,8939)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2014-09-01')
	AND YEAR(p.startdate) = YEAR('2014-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
	

)sag
)sag1

GROUP BY sag1.ou_name
ORDER BY target_max DESC LIMIT 2
)sag2

UNION ALL

#Minor_Surgeries
SELECT *,'Minor Surgeries' AS 'indicators'
FROM
(

SELECT sag1.ou_name,sag1.order,sag1.name,
IFNULL(((SUM(IFNULL(7775_curr_mn,0))+SUM(IFNULL(7073_curr_mn,0))+SUM(IFNULL(7074_curr_mn,0))+SUM(IFNULL(7075_curr_mn,0)))/SUM(IFNULL(8940_curr_mn,0))),0) AS 'target_max'


FROM
(	
SELECT sag.ou_name,sag.order,sag.name,
CASE WHEN sag.dataelementid=7775 THEN sag.value END AS '7775_curr_mn',
CASE WHEN sag.dataelementid=7073 THEN sag.value END AS '7073_curr_mn',
CASE WHEN sag.dataelementid=7074 THEN sag.value END AS '7074_curr_mn',
CASE WHEN sag.dataelementid=7075 THEN sag.value END AS '7075_curr_mn',
CASE WHEN sag.dataelementid=8940 THEN sag.value END AS '8940_curr_mn'


	
FROM	
(	
	
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','4' AS 'order'
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
	WHERE dv.dataelementid IN (8936,7775,7073,7074,7075,8940)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2014-09-01')
	AND YEAR(p.startdate) = YEAR('2014-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
	

)sag
)sag1

GROUP BY sag1.ou_name
ORDER BY target_max DESC LIMIT 2
)sag2

UNION ALL



#Major_Surgeries
SELECT *,'Major Surgeris' AS 'indicators'
FROM
(
SELECT sag1.ou_name,sag1.order,sag1.name,
SUM(IFNULL(7776_curr_mn,0))+SUM(IFNULL(7087_curr_mn,0))+SUM(IFNULL(7088_curr_mn,0))+SUM(IFNULL(7080_curr_mn,0))+SUM(IFNULL(7081_curr_mn,0))+ 
SUM(IFNULL(7082_curr_mn,0))+SUM(IFNULL(7083_curr_mn,0))+SUM(IFNULL(7084_curr_mn,0))+SUM(IFNULL(7085_curr_mn,0))+SUM(IFNULL(7086_curr_mn,0))+
SUM(IFNULL(8941_curr_mn,0)) AS 'target_max'

FROM
(	
SELECT sag.ou_name,sag.order,sag.name,

CASE WHEN sag.dataelementid=7776 THEN sag.value END AS '7776_curr_mn',
CASE WHEN sag.dataelementid=7087 THEN sag.value END AS '7087_curr_mn',
CASE WHEN sag.dataelementid=7088 THEN sag.value END AS '7088_curr_mn',
CASE WHEN sag.dataelementid=7080 THEN sag.value END AS '7080_curr_mn',
CASE WHEN sag.dataelementid=7081 THEN sag.value END AS '7081_curr_mn',
CASE WHEN sag.dataelementid=7082 THEN sag.value END AS '7082_curr_mn',
CASE WHEN sag.dataelementid=7083 THEN sag.value END AS '7083_curr_mn',
CASE WHEN sag.dataelementid=7084 THEN sag.value END AS '7084_curr_mn',
CASE WHEN sag.dataelementid=7085 THEN sag.value END AS '7085_curr_mn',
CASE WHEN sag.dataelementid=7086 THEN sag.value END AS '7086_curr_mn',
CASE WHEN sag.dataelementid=8941 THEN sag.value END AS '8941_curr_mn'

	
FROM	
(	
	
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','5' AS 'order'
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
	AND MONTH(p.startdate) = MONTH('2014-09-01')
	AND YEAR(p.startdate) = YEAR('2014-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
	

)sag
)sag1

GROUP BY sag1.ou_name
ORDER BY target_max DESC LIMIT 2
)sag2

UNION ALL


#Deliveries
SELECT *,'Deliveries' AS 'indicators'
FROM
(
SELECT sag1.ou_name,sag1.order,sag1.name,
IFNULL(((SUM(IFNULL(1254_curr_mn,0))+SUM(IFNULL(1257_curr_mn,0)))/SUM(IFNULL(8942_curr_mn,0))),0) AS 'target_max'


FROM
(	
SELECT sag.ou_name,sag.order,sag.name,
CASE WHEN sag.dataelementid=1254 THEN sag.value END AS '1254_curr_mn',
CASE WHEN sag.dataelementid=1257 THEN sag.value END AS '1257_curr_mn',
CASE WHEN sag.dataelementid=8942 THEN sag.value END AS '8942_curr_mn'



	
FROM	
(	
	
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','6' AS 'order'
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
	WHERE dv.dataelementid IN (8936,1254,1257,8942)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2014-09-01')
	AND YEAR(p.startdate) = YEAR('2014-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
	

)sag
)sag1

GROUP BY sag1.ou_name
ORDER BY target_max DESC LIMIT 2
)sag2

UNION ALL


#Radio_Logical_Investigation
SELECT *,'Radio Logical Investigations' AS 'indicators'
FROM
(
SELECT sag1.ou_name,sag1.order,sag1.name,
IFNULL((SUM(IFNULL(8945_curr_mn,0))/SUM(IFNULL(8943_curr_mn,0))),0) AS 'target_max'

FROM
(	
SELECT sag.ou_name,sag.order,sag.name,
CASE WHEN sag.dataelementid=8945 THEN sag.value END AS '8945_curr_mn',
CASE WHEN sag.dataelementid=8943 THEN sag.value END AS '8943_curr_mn'



	
FROM	
(	
	#Current_month
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','7' AS 'order'
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
	WHERE dv.dataelementid IN (8936,8945,8943)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2014-09-01')
	AND YEAR(p.startdate) = YEAR('2014-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
	

)sag
)sag1
GROUP BY sag1.ou_name
ORDER BY target_max DESC LIMIT 2
)sag2

UNION


#Lab_Tests
SELECT *,'Lab Tests' AS 'indicators'
FROM
(
SELECT sag1.ou_name,sag1.order,sag1.name,
IFNULL((SUM(IFNULL(6071_curr_mn,0))/SUM(IFNULL(8944_curr_mn,0))),0) AS 'target_max'


FROM
(	
SELECT sag.ou_name,sag.order,sag.name,
CASE WHEN sag.dataelementid=6071 THEN sag.value END AS '6071_curr_mn',
CASE WHEN sag.dataelementid=8944 THEN sag.value END AS '8944_curr_mn'



	
FROM	
(	
	
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','8' AS 'order'
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
	WHERE dv.dataelementid IN (8936,6071,8944)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2014-09-01')
	AND YEAR(p.startdate) = YEAR('2014-09-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

)sag
)sag1
GROUP BY sag1.ou_name
ORDER BY target_max DESC LIMIT 2
)sag2


)sag3

