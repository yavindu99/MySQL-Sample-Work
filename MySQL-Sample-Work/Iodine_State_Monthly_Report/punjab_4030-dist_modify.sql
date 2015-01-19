SELECT sag2.name,sag2.order,
SUM(IFNULL(6539c,0)) AS '6539c',
SUM(IFNULL(6539q,0)) AS '6539q',
SUM(IFNULL(6539Y,0)) AS '6539y',
SUM(IFNULL(6540c,0)) AS '6540c',
SUM(IFNULL(6540q,0)) AS '6540q',
SUM(IFNULL(6540Y,0)) AS '6540y',
SUM(IFNULL(6536c,0)) AS '6536c',
SUM(IFNULL(6536q,0)) AS '6536q',
SUM(IFNULL(6536Y,0)) AS '6536y',
SUM(IFNULL(6537c,0)) AS '6537c',
SUM(IFNULL(6537q,0)) AS '6537q',
SUM(IFNULL(6537Y,0)) AS '6537y',

SUM(IFNULL(6543c,0)) AS '6543c',
SUM(IFNULL(6544c,0)) AS '6544c'
FROM
(
SELECT sag1.name,sag1.order,
CASE WHEN sag1.dataelementid=6539 AND sag1.time LIKE 'cm' THEN val END AS '6539c', 
CASE WHEN sag1.dataelementid=6539 AND sag1.time LIKE 'cq' THEN val END AS '6539q', 
CASE WHEN sag1.dataelementid=6539 AND sag1.time LIKE 'yr' THEN val END AS '6539y', 
CASE WHEN sag1.dataelementid=6540 AND sag1.time LIKE 'cm' THEN val END AS '6540c', 
CASE WHEN sag1.dataelementid=6540 AND sag1.time LIKE 'cq' THEN val END AS '6540q', 
CASE WHEN sag1.dataelementid=6540 AND sag1.time LIKE 'yr' THEN val END AS '6540y', 

CASE WHEN sag1.dataelementid=6536 AND sag1.time LIKE 'cm' THEN val END AS '6536c', 
CASE WHEN sag1.dataelementid=6536 AND sag1.time LIKE 'cq' THEN val END AS '6536q', 
CASE WHEN sag1.dataelementid=6536 AND sag1.time LIKE 'yr' THEN val END AS '6536y', 

CASE WHEN sag1.dataelementid=6537 AND sag1.time LIKE 'cm' THEN val END AS '6537c',
CASE WHEN sag1.dataelementid=6537 AND sag1.time LIKE 'cq' THEN val END AS '6537q',
CASE WHEN sag1.dataelementid=6537 AND sag1.time LIKE 'yr' THEN val END AS '6537y',

CASE WHEN sag1.dataelementid=6543 THEN sag1.val END AS '6543c',
CASE WHEN sag1.dataelementid=6544 THEN sag1.val END AS '6544c'

FROM
(
SELECT  sag.name,sag.dataelementid,SUM(IFNULL(sag.value,0)) AS 'val',sag.time,'1' AS 'order'
FROM
	(
	SELECT asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,asd1.time
	FROM
	(
	SELECT ou.organisationunitid,ou1.name, ou.name AS 'ou_name', og.name AS gname
	FROM orgunitgroup og 
	INNER JOIN orgunitgroupmembers ogm ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN organisationunit ou ON ou.organisationunitid = ogm.organisationunitid
	INNER JOIN _orgunitstructure os ON os.organisationunitid = ou.organisationunitid
	INNER JOIN organisationunit ou1 ON ou1.organisationunitid=os.idlevel3
	WHERE og.name IN('District') 
	
	UNION
	
	SELECT ou.organisationunitid,ou1.name, ou.name AS 'ou_name', og.name AS gname
	FROM orgunitgroup og 
	INNER JOIN orgunitgroupmembers ogm ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN organisationunit ou ON ou.organisationunitid = ogm.organisationunitid
	INNER JOIN _orgunitstructure os ON os.organisationunitid = ou.organisationunitid
	INNER JOIN organisationunit ou1 ON ou1.organisationunitid=os.idlevel3
	WHERE og.name IN('PHCs') 
	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate,'cm' AS 'time'
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6539,6540,
			6536,6537
			)
	AND dv.categoryoptioncomboid IN (1)
	AND YEAR(p.startdate) = YEAR('2013-12-01')
	AND MONTH(p.startdate) = MONTH('2013-12-01')

	UNION
	
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate,'cq' AS 'time'
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6539,6540,
			6536,6537
			)
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
	WHERE dv.dataelementid IN (6539,6540,6536,6537)
	AND dv.categoryoptioncomboid IN (1)
	AND CASE WHEN MONTH('2013-12-01') BETWEEN 1 AND 3 THEN p.startdate BETWEEN CONCAT(YEAR('2013-10-01')-1,'-04-01') AND '2013-12-01'
		WHEN MONTH('2013-12-01') BETWEEN 4 AND 12 THEN p.startdate BETWEEN CONCAT(YEAR('2013-10-01'),'-04-01') AND '2013-12-01'
		END

	)asd1
	ON asd.organisationunitid = asd1.sourceid
	)sag
	GROUP BY sag.name,dataelementid,sag.time
	
UNION

SELECT 'State IDD Lab' AS 'name',asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'val','cm' AS 'time','2' AS 'order'
FROM
(
SELECT ou.organisationunitid,ou.name
FROM organisationunit ou
INNER JOIN _orgunitstructure os ON ou.organisationunitid=os.organisationunitid
WHERE idlevel2 IS NOT NULL
AND idlevel3 IS NULL

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (6543,6544)
AND dv.categoryoptioncomboid IN (1)
AND YEAR(p.startdate) = YEAR('2013-12-01')
AND MONTH(p.startdate) = MONTH('2013-12-01')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd1.dataelementid

)sag1	
)sag2
GROUP BY sag2.name
ORDER BY sag2.order