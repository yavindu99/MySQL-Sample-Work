#circle - corp
SELECT sag2.Circle,sag2.District, sag2.gname,sag2.mon, 
SUM(IFNULL(6265c,0)) AS '6265c',
SUM(IFNULL(6266c,0)) AS '6266c',
SUM(IFNULL(6267c,0)) AS '6267c',

SUM(IFNULL(96c,0)) AS '69c',
SUM(IFNULL(5966c,0)) AS '5966c',
SUM(IFNULL(78c,0)) AS '78c',
SUM(IFNULL(5951c,0)) AS '5951c',
SUM(IFNULL(80c,0)) AS '80c',
SUM(IFNULL(5953c,0)) AS '5953c',

SUM(IFNULL(96p,0)) AS '69p',
SUM(IFNULL(5966p,0)) AS '5966p',
SUM(IFNULL(78p,0)) AS '78p',
SUM(IFNULL(5951p,0)) AS '5951p',
SUM(IFNULL(80p,0)) AS '80p',
SUM(IFNULL(5953p,0)) AS '5953p'

FROM
(
SELECT sag1.Circle,sag1.District,sag1.gname,sag1.mon,
CASE WHEN dataelementid=6265 AND sag1.time LIKE 'curr' THEN sag1.value END AS '6265c',
CASE WHEN dataelementid=6266 AND sag1.time LIKE 'curr' THEN sag1.value END AS '6266c',
CASE WHEN dataelementid=6267 AND sag1.time LIKE 'curr' THEN sag1.value END AS '6267c',

CASE WHEN dataelementid=96 AND sag1.time LIKE 'curr' THEN sag1.value END AS '96c',
CASE WHEN dataelementid=5966 AND sag1.time LIKE 'curr' THEN sag1.value END AS '5966c',
CASE WHEN dataelementid=78 AND sag1.time LIKE 'curr' THEN sag1.value END AS '78c',
CASE WHEN dataelementid=5951 AND sag1.time LIKE 'curr' THEN sag1.value END AS '5951c',
CASE WHEN dataelementid=80 AND sag1.time LIKE 'curr' THEN sag1.value END AS '80c',
CASE WHEN dataelementid=5953 AND sag1.time LIKE 'curr' THEN sag1.value END AS '5953c',

CASE WHEN dataelementid=96 AND sag1.time LIKE 'prog' THEN sag1.value END AS '96p',
CASE WHEN dataelementid=5966 AND sag1.time LIKE 'prog' THEN sag1.value END AS '5966p',
CASE WHEN dataelementid=78 AND sag1.time LIKE 'prog' THEN sag1.value END AS '78p',
CASE WHEN dataelementid=5951 AND sag1.time LIKE 'prog' THEN sag1.value END AS '5951p',
CASE WHEN dataelementid=80 AND sag1.time LIKE 'prog' THEN sag1.value END AS '80p',
CASE WHEN dataelementid=5953 AND sag1.time LIKE 'prog' THEN sag1.value END AS '5953p'

FROM
(
	SELECT sag.Circle,sag.District,sag.gname,CASE WHEN MONTH('2012-07-01') BETWEEN 1 AND 3 THEN MONTH('2012-07-01')+9 
				WHEN MONTH('2012-07-01') BETWEEN 4 AND 12 THEN MONTH('2012-07-01')-3 END AS mon,sag.time,
		sag.dataelementid,SUM(IFNULL(sag.value,0)) AS 'value'
	FROM
	(
		#current month
		
		SELECT asd.Circle,CASE WHEN asd.gname LIKE 'Corporation Group' THEN asd.name END AS 'District',asd.gname,asd.name,'curr' AS 'time',
		asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value
		FROM
			(
			SELECT ogm.organisationunitid,og.name AS 'gname',ou.name,os.level,ou1.name AS 'Circle',ou2.name AS 'District'
			FROM orgunitgroupmembers ogm
			INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
			INNER JOIN organisationunit ou ON ou.organisationunitid = ogm.organisationunitid
			INNER JOIN _orgunitstructure os ON os.organisationunitid = ou.organisationunitid
			INNER JOIN organisationunit ou1 ON ou1.organisationunitid = os.idlevel3
			INNER JOIN organisationunit ou2 ON ou2.organisationunitid = os.idlevel4
			WHERE og.name IN ('Corporation Group')
			AND ou1.name LIKE 'Pune Circle'
			)asd

		LEFT JOIN

			(
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN (96,5966,78,5951,80,5953)
			AND dv.categoryoptioncomboid IN (1)
			AND p.startdate BETWEEN '2012-07-01' AND '2012-07-31'
			AND periodtypeid = 3
			
			UNION
			
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN (6265,6266,6267)
			AND dv.categoryoptioncomboid IN (1)
			AND CASE WHEN MONTH('2012-07-01') BETWEEN 4 AND 12 
					THEN YEAR(p.startdate) = YEAR('2012-07-01') 
						AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2012-07-01')
				WHEN  MONTH('2012-07-01') BETWEEN 1 AND 3 	
					THEN YEAR(p.startdate) BETWEEN YEAR('2012-07-01')-1 AND YEAR('2012-07-01')
						AND p.startdate BETWEEN CONCAT(YEAR('2012-07-01')-1,'-',04,'-',01) AND CONCAT('2012-07-01')
				END	
			)asd1

		ON asd.organisationunitid = asd1.sourceid

	UNION

		#progressive
		SELECT asd.Circle,CASE WHEN asd.gname LIKE 'Corporation Group' THEN asd.name END AS 'District',asd.gname,asd.name,'prog' AS 'time',
		asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value
		FROM
			(
			SELECT ogm.organisationunitid,og.name AS 'gname',ou.name,os.level,ou1.name AS 'Circle',ou2.name AS 'District'
			FROM orgunitgroupmembers ogm
			INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
			INNER JOIN organisationunit ou ON ou.organisationunitid = ogm.organisationunitid
			INNER JOIN _orgunitstructure os ON os.organisationunitid = ou.organisationunitid
			INNER JOIN organisationunit ou1 ON ou1.organisationunitid = os.idlevel3
			INNER JOIN organisationunit ou2 ON ou2.organisationunitid = os.idlevel4
			WHERE og.name IN ('Corporation Group')
			AND ou1.name LIKE 'Pune Circle'
			)asd

		LEFT JOIN

			(
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN (96,5966,78,5951,80,5953)
			AND dv.categoryoptioncomboid IN (1)
			AND CASE WHEN MONTH('2012-07-01') BETWEEN 4 AND 12 
					THEN YEAR(p.startdate) = YEAR('2012-07-01') 
						AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2012-07-01')
				WHEN  MONTH('2012-07-01') BETWEEN 1 AND 3 	
					THEN YEAR(p.startdate) BETWEEN YEAR('2012-07-01')-1 AND YEAR('2012-07-01')
						AND p.startdate BETWEEN CONCAT(YEAR('2012-07-01')-1,'-',04,'-',01) AND CONCAT('2012-07-01')
				END	

			AND periodtypeid = 3

			)asd1

		ON asd.organisationunitid = asd1.sourceid
	)sag
	GROUP BY District,dataelementid,sag.time
)sag1	
)sag2
GROUP BY Circle,District
ORDER BY gname,District