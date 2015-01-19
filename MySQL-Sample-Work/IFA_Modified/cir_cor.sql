#circle - corp
SELECT sag2.Circle,sag2.District, sag2.gname,sag2.mon, 
SUM(IFNULL(sag2.6235c,0)) AS '6235c',
SUM(IFNULL(sag2.6236c,0)) AS '6236c',
SUM(IFNULL(sag2.6237c,0)) AS '6237c',
SUM(IFNULL(sag2.9c,0)) AS '9c',
SUM(IFNULL(sag2.2608c,0)) AS '2608c',
SUM(IFNULL(sag2.2609c,0)) AS '2609c',

SUM(IFNULL(sag2.9p,0)) AS '9p',
SUM(IFNULL(sag2.2608p,0)) AS '2608p',
SUM(IFNULL(sag2.2609p,0)) AS '2609p',

SUM(IFNULL(sag2.9l,0)) AS '9l',
SUM(IFNULL(sag2.2608l,0)) AS '2608l',
SUM(IFNULL(sag2.2609l,0)) AS '2609l'

FROM
(
SELECT sag1.Circle,sag1.District,sag1.gname,sag1.mon,
CASE WHEN dataelementid=6235 AND sag1.time LIKE 'curr' THEN sag1.value END AS '6235c',
CASE WHEN dataelementid=6236 AND sag1.time LIKE 'curr' THEN sag1.value END AS '6236c',
CASE WHEN dataelementid=6237 AND sag1.time LIKE 'curr' THEN sag1.value END AS '6237c',
CASE WHEN dataelementid=9 AND sag1.time LIKE 'curr' THEN sag1.value END AS '9c',
CASE WHEN dataelementid=2608 AND sag1.time LIKE 'curr' THEN sag1.value END AS '2608c',
CASE WHEN dataelementid=2609 AND sag1.time LIKE 'curr' THEN sag1.value END AS '2609c',

CASE WHEN dataelementid=9 AND sag1.time LIKE 'prog' THEN sag1.value END AS '9p',
CASE WHEN dataelementid=2608 AND sag1.time LIKE 'prog' THEN sag1.value END AS '2608p',
CASE WHEN dataelementid=2609 AND sag1.time LIKE 'prog' THEN sag1.value END AS '2609p',

CASE WHEN dataelementid=9 AND sag1.time LIKE 'lyr' THEN sag1.value END AS '9l',
CASE WHEN dataelementid=2608 AND sag1.time LIKE 'lyr' THEN sag1.value END AS '2608l',
CASE WHEN dataelementid=2609 AND sag1.time LIKE 'lyr' THEN sag1.value END AS '2609l'


FROM
(
	SELECT sag.Circle,sag.District,sag.gname,IFNULL(sag.mon,MONTH('2013-12-01')) AS mon,sag.time,
		sag.dataelementid,SUM(IFNULL(sag.value,0)) AS 'value'
	FROM
	(
		#current month
		
		SELECT asd.Circle,CASE WHEN asd.gname LIKE 'Corporation Group' THEN asd.name END AS 'District',asd.gname,asd.name,asd1.mon,'curr' AS 'time',
		asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,MONTH(startdate)
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
			AND (ou1.name LIKE 'Pune Circle' OR 'Pune Circle' LIKE "All Circles")
			)asd

		LEFT JOIN

			(
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,CASE WHEN MONTH('2013-12-01') BETWEEN 1 AND 3 THEN MONTH('2013-12-01')+9 
				WHEN MONTH('2013-12-01') BETWEEN 4 AND 12 THEN MONTH('2013-12-01')-3 END AS mon,p.startdate
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN (9,2608,2609)
			AND dv.categoryoptioncomboid IN (1)
			#AND p.startdate BETWEEN '2013-12-01' AND '2013-12-01'
			AND MONTH(p.startdate)=MONTH('2013-12-01')
			AND YEAR(p.startdate)=YEAR('2013-12-01')
			AND periodtypeid = 3
			
			UNION
			
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,CASE WHEN MONTH('2013-12-01') BETWEEN 1 AND 3 THEN MONTH('2013-12-01')+9 
				WHEN MONTH('2013-12-01') BETWEEN 4 AND 12 THEN MONTH('2013-12-01')-3  END AS mon,p.startdate
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN (6235,6236,6237)
			AND dv.categoryoptioncomboid IN (1)
			AND CASE WHEN MONTH('2013-12-01') BETWEEN 4 AND 12 
					THEN YEAR(p.startdate) = YEAR('2013-12-01') 
						AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2013-12-01')
				WHEN  MONTH('2013-12-01') BETWEEN 1 AND 3 	
					THEN YEAR(p.startdate) BETWEEN YEAR('2013-12-01')-1 AND YEAR('2013-12-01')
						AND p.startdate BETWEEN CONCAT(YEAR('2013-12-01')-1,'-',04,'-',01) AND CONCAT('2013-12-01')
				END	
			)asd1

		ON asd.organisationunitid = asd1.sourceid

	UNION

		#progressive
		SELECT asd.Circle,CASE WHEN asd.gname LIKE 'Corporation Group' THEN asd.name END AS 'District',asd.gname,asd.name,asd1.mon,'prog' AS 'time',
		asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,MONTH(startdate)
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
			AND (ou1.name LIKE 'Pune Circle' OR 'Pune Circle' LIKE "All Circles")
			)asd

		LEFT JOIN

			(
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,CASE WHEN MONTH('2013-12-01') BETWEEN 1 AND 3 THEN MONTH('2013-12-01')+9 
				WHEN MONTH('2013-12-01') BETWEEN 4 AND 12 THEN MONTH('2013-12-01')-3 END AS mon,p.startdate
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN (9,2608,2609)
			AND dv.categoryoptioncomboid IN (1)
			AND CASE WHEN MONTH('2013-12-01') BETWEEN 4 AND 12 
					THEN YEAR(p.startdate) = YEAR('2013-12-01') 
						AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2013-12-01')
				WHEN  MONTH('2013-12-01') BETWEEN 1 AND 3 	
					THEN YEAR(p.startdate) BETWEEN YEAR('2013-12-01')-1 AND YEAR('2013-12-01')
						AND p.startdate BETWEEN CONCAT(YEAR('2013-12-01')-1,'-',04,'-',01) AND CONCAT('2013-12-01')
				END	

			AND periodtypeid = 3

			)asd1

		ON asd.organisationunitid = asd1.sourceid
		
	UNION
		
		#last yr
		SELECT asd.Circle,CASE WHEN asd.gname LIKE 'Corporation Group' THEN asd.name END AS 'District',asd.gname,asd.name,asd1.mon,'lyr' AS 'time',
		asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,MONTH(startdate)
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
		    AND (ou1.name LIKE 'Pune Circle' OR 'Pune Circle' LIKE "All Circles")
		    )asd

		LEFT JOIN

		    (
		    SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,CASE WHEN MONTH('2013-12-01') BETWEEN 1 AND 3 THEN MONTH('2013-12-01')+9 
				WHEN MONTH('2013-12-01') BETWEEN 4 AND 12 THEN MONTH('2013-12-01')-3 END AS mon,p.startdate
		    FROM datavalue dv
		    INNER JOIN period p ON p.periodid=dv.periodid 
		    WHERE dv.dataelementid IN (9,2608,2609)
		    AND dv.categoryoptioncomboid IN (1)
		    AND CASE WHEN MONTH('2013-12-01') BETWEEN 4 AND 12 
			    THEN YEAR(p.startdate) = YEAR('2013-12-01')-1
				AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2013-12-01')
			WHEN  MONTH('2013-12-01') BETWEEN 1 AND 3     
			THEN p.startdate BETWEEN CONCAT(YEAR('2013-12-01')-2,'-',04,'-',01) AND CONCAT(YEAR('2013-12-01')-1,'-',MONTH('2013-12-01'),'-',DAY('2013-12-01'))
			END    

		    AND periodtypeid = 3

		    )asd1

		ON asd.organisationunitid = asd1.sourceid
	)sag
	GROUP BY District,dataelementid,sag.time
)sag1	
)sag2
GROUP BY Circle,District
ORDER BY Circle,gname,District