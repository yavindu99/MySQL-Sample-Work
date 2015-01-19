SELECT sag1.name,
SUM(IFNULL(7889_l,0)) AS '7889_l',
SUM(IFNULL(8121_l,0)) AS '8121_l',
SUM(IFNULL(7885_c,0)) AS '7885_c',
SUM(IFNULL(7887_c,0)) AS '7887_c',
SUM(IFNULL(7886_c,0)) AS '7886_c',
SUM(IFNULL(7888_c,0)) AS '7888_c',
SUM(IFNULL(7885_u,0)) AS '7885_u',
SUM(IFNULL(7887_u,0)) AS '7887_u',
SUM(IFNULL(7886_u,0)) AS '7886_u',
SUM(IFNULL(7888_u,0)) AS '7888_u',
SUM(IFNULL(7914_c,0)) AS '7914_c',
SUM(IFNULL(7921_c,0)) AS '7921_c',
SUM(IFNULL(7915_c,0)) AS '7915_c',
SUM(IFNULL(7922_c,0)) AS '7922_c',
SUM(IFNULL(7990_c,0)) AS '7990_c',
SUM(IFNULL(7919_c,0)) AS '7919_c',
SUM(IFNULL(8122_c,0)) AS '8122_c',
SUM(IFNULL(8123_c,0)) AS '8123_c',
SUM(IFNULL(7914_u,0)) AS '7914_u',
SUM(IFNULL(7921_u,0)) AS '7921_u',
SUM(IFNULL(7915_u,0)) AS '7915_u',
SUM(IFNULL(7922_u,0)) AS '7922_u',
SUM(IFNULL(7990_u,0)) AS '7990_u',
SUM(IFNULL(7919_u,0)) AS '7919_u',
SUM(IFNULL(8122_u,0)) AS '8122_u',
SUM(IFNULL(8123_u,0)) AS '8123_u',

SUM(IFNULL(7899_c,0)) AS '7899_c',
SUM(IFNULL(8121_c,0)) AS '8121_c',
SUM(IFNULL(7902_c,0)) AS '7902_c',
SUM(IFNULL(7903_c,0)) AS '7903_c'

FROM
(
SELECT sag.idlevel3,ou.name,sag.dataelementid,sag.categoryoptioncomboid,
CASE WHEN sag.dataelementid IN (7899) AND sag.time LIKE 'last_mn' THEN sag.value END AS '7889_l',
CASE WHEN sag.dataelementid IN (8121) AND sag.time LIKE 'last_mn' THEN sag.value END AS '8121_l',

CASE WHEN sag.dataelementid IN (7885) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7885_c',
CASE WHEN sag.dataelementid IN (7887) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7887_c',
CASE WHEN sag.dataelementid IN (7886) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7886_c',
CASE WHEN sag.dataelementid IN (7888) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7888_c',
CASE WHEN sag.dataelementid IN (7885) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7885_u',
CASE WHEN sag.dataelementid IN (7887) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7887_u',
CASE WHEN sag.dataelementid IN (7886) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7886_u',
CASE WHEN sag.dataelementid IN (7888) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7888_u',

CASE WHEN sag.dataelementid IN (7914) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7914_c',
CASE WHEN sag.dataelementid IN (7921) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7921_c',
CASE WHEN sag.dataelementid IN (7915) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7915_c',
CASE WHEN sag.dataelementid IN (7922) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7922_c',
CASE WHEN sag.dataelementid IN (7990) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7990_c',
CASE WHEN sag.dataelementid IN (7991) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7919_c',
CASE WHEN sag.dataelementid IN (8122) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '8122_c',
CASE WHEN sag.dataelementid IN (8123) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '8123_c',

CASE WHEN sag.dataelementid IN (7914) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7914_u',
CASE WHEN sag.dataelementid IN (7921) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7921_u',
CASE WHEN sag.dataelementid IN (7915) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7915_u',
CASE WHEN sag.dataelementid IN (7922) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7922_u',
CASE WHEN sag.dataelementid IN (7990) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7990_u',
CASE WHEN sag.dataelementid IN (7991) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '7919_u',
CASE WHEN sag.dataelementid IN (8122) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '8122_u',
CASE WHEN sag.dataelementid IN (8123) AND sag.time LIKE 'upto_mn' THEN sag.value END AS '8123_u',

CASE WHEN sag.dataelementid IN (7899) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7899_c',
CASE WHEN sag.dataelementid IN (8121) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '8121_c',
CASE WHEN sag.dataelementid IN (7902) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7902_c',
CASE WHEN sag.dataelementid IN (7903) AND sag.time LIKE 'cur_mn' THEN sag.value END AS '7903_c'


FROM 
(
	#current month
	SELECT asd.idlevel3,asd.organisationunitid,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(asd1.value) AS 'value', 'cur_mn' AS 'time'
	FROM
	(
	SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	WHERE og.name IN ('Sub District Hospitals','District Hospitals','CHCs')	
	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (7885,7887,7886,7888,7914,7921,7915,7922,7990,7991,8122,8123,7899,8121,7902,7903)
	AND dv.categoryoptioncomboid IN (1)
	AND MONTH(p.startdate) = MONTH('2013-10-01')
	AND YEAR(p.startdate) = YEAR('2013-10-01')
	AND periodtypeid = 3
	)asd1
	ON asd.organisationunitid = asd1.sourceid
	GROUP BY asd.idlevel3,asd1.dataelementid,asd1.categoryoptioncomboid

UNION

	#from 1st april to current date
	SELECT asd.idlevel3,asd.organisationunitid,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(asd1.value) AS 'value', 'upto_mn' AS 'time'
	FROM
	(
	SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	WHERE og.name IN ('Sub District Hospitals','District Hospitals','CHCs')	
	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (7885,7887,7886,7888,7914,7921,7915,7922,7990,7991,8122,8123)
	AND dv.categoryoptioncomboid IN (1)
	AND CASE WHEN MONTH('2013-10-01') BETWEEN 4 AND 12 
			THEN YEAR(p.startdate) = YEAR('2013-10-01') 
				AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2013-10-01')
		WHEN  MONTH('2013-10-01') BETWEEN 1 AND 3 	
			THEN YEAR(p.startdate) BETWEEN YEAR('2013-10-01')-1 AND YEAR('2013-10-01')
				AND p.startdate BETWEEN CONCAT(YEAR('2013-10-01')-1,'-',04,'-',01) AND CONCAT('2013-10-01')
		END	

	AND periodtypeid = 3
	)asd1
	ON asd.organisationunitid = asd1.sourceid
	GROUP BY asd.idlevel3,asd1.dataelementid,asd1.categoryoptioncomboid
	
UNION

	#end of march (last yr)
	SELECT asd.idlevel3,asd.organisationunitid,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(asd1.value) AS 'value', 'last_mn' AS 'time'
	FROM
	(
	SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	WHERE og.name IN ('Sub District Hospitals','District Hospitals','CHCs')	
	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (7899,8121)
	AND dv.categoryoptioncomboid IN (1)
	AND CASE WHEN MONTH('2013-10-01') BETWEEN 4 AND 12 
			THEN YEAR(p.startdate) = YEAR('2013-10-01') 
				AND MONTH(p.startdate) = 3 
		WHEN  MONTH('2013-10-01') BETWEEN 1 AND 3 	
			THEN YEAR(p.startdate) = YEAR('2013-10-01')-1 
				AND MONTH(p.startdate) = 3 
		END	

	AND periodtypeid = 3
	)asd1
	ON asd.organisationunitid = asd1.sourceid
	GROUP BY asd.idlevel3,asd1.dataelementid,asd1.categoryoptioncomboid


)sag
INNER JOIN organisationunit ou ON ou.organisationunitid=sag.idlevel3
)sag1
GROUP BY sag1.name