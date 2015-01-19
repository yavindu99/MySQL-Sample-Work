SELECT ou_name, 
SUM(IFNULL(6543c,0)) AS '6543c',
SUM(IFNULL(6544c,0)) AS '6544c'
FROM
(
SELECT ou_name,
CASE WHEN dataelementid=6543 THEN sag.value END AS '6543c',
CASE WHEN dataelementid=6544 THEN sag.value END AS '6544c'
FROM
(
	SELECT asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value
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
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6543,6544)
	AND dv.categoryoptioncomboid IN (1)
	AND YEAR(p.startdate) = YEAR('2013-12-01')
	AND MONTH(p.startdate) = MONTH('2013-12-01')
	)asd1
	ON asd.organisationunitid = asd1.sourceid
)sag
)sag1	