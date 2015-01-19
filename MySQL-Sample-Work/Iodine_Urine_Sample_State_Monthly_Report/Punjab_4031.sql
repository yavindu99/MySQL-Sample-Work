SELECT ou_name, 
SUM(IFNULL(6545c,0)) AS '6545c',
SUM(IFNULL(6545q,0)) AS '6545q',
SUM(IFNULL(6545Y,0)) AS '6545y',

SUM(IFNULL(6546c,0)) AS '6546c',
SUM(IFNULL(6547c,0)) AS '6547c',
SUM(IFNULL(6548c,0)) AS '6548c',
SUM(IFNULL(6550c,0)) AS '6550c',
SUM(IFNULL(6550q,0)) AS '6550q',
SUM(IFNULL(6550Y,0)) AS '6550y'
FROM
(
SELECT ou_name,
CASE WHEN dataelementid=6545 AND sag.time LIKE 'cm' THEN sag.value END AS '6545c',
CASE WHEN dataelementid=6545 AND sag.time LIKE 'cq' THEN sag.value END AS '6545q',
CASE WHEN dataelementid=6545 AND sag.time LIKE 'yr' THEN sag.value END AS '6545y',
CASE WHEN dataelementid=6546 THEN sag.value END AS '6546c',
CASE WHEN dataelementid=6547 THEN sag.value END AS '6547c',
CASE WHEN dataelementid=6548 THEN sag.value END AS '6548c',
CASE WHEN dataelementid=6550  AND sag.time LIKE 'cm' THEN sag.value END AS '6550c',
CASE WHEN dataelementid=6550  AND sag.time LIKE 'cq' THEN sag.value END AS '6550q',
CASE WHEN dataelementid=6550  AND sag.time LIKE 'yr' THEN sag.value END AS '6550y'
FROM
(
	SELECT asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,asd1.time
	FROM
	(
	SELECT ou.organisationunitid,'Punjab',ou.name AS 'ou_name','state' AS gname
	FROM organisationunit ou
	INNER JOIN _orgunitstructure os ON ou.organisationunitid=os.organisationunitid
	WHERE idlevel2 IS NOT NULL
	AND idlevel3 IS NULL

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate,'cm' AS 'time'
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6545,6546,6547,6548,6550)
	AND dv.categoryoptioncomboid IN (1)
	AND YEAR(p.startdate) = YEAR('2013-12-01')
	AND MONTH(p.startdate) = MONTH('2013-12-01')
	
	UNION
	
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate,'cq' AS 'time'
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6545,6550)
	AND dv.categoryoptioncomboid IN (1)
	AND YEAR(p.startdate) = YEAR('2013-12-01')
	AND CASE WHEN MONTH('2013-10-01')= 1 THEN MONTH(p.startdate) BETWEEN 1 AND 3
		WHEN MONTH('2013-10-01')= 4 THEN MONTH(p.startdate) BETWEEN 4 AND 6
		WHEN MONTH('2013-10-01')= 7 THEN MONTH(p.startdate) BETWEEN 7 AND 9
		WHEN MONTH('2013-10-01')= 10 THEN MONTH(p.startdate) BETWEEN 10 AND 12 END
		
	UNION
		
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate,'yr' AS 'time'
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6545,6550)
	AND dv.categoryoptioncomboid IN (1)
	AND CASE WHEN MONTH('2013-12-01') BETWEEN 1 AND 3 THEN p.startdate BETWEEN CONCAT(YEAR('2013-10-01')-1,'-04-01') AND '2013-12-01'
		WHEN MONTH('2013-12-01') BETWEEN 4 AND 12 THEN p.startdate BETWEEN CONCAT(YEAR('2013-10-01'),'-04-01') AND '2013-12-01'
		END

	
	)asd1
	ON asd.organisationunitid = asd1.sourceid
)sag
)sag1	