SELECT sag2.idlevel2,
SUM(IFNULL(sag2.7729_1_month,0)) AS '7729_1_month',
SUM(IFNULL(sag2.7730_1_month,0)) AS '7730_1_month',
SUM(IFNULL(sag2.7731_1_month,0)) AS '7731_1_month',
SUM(IFNULL(sag2.7732_1_month,0)) AS '7732_1_month',
SUM(IFNULL(sag2.7733_1_month,0)) AS '7733_1_month',
SUM(IFNULL(sag2.7734_1_month,0)) AS '7734_1_month',
SUM(IFNULL(sag2.7689_1_month,0)) AS '7689_1_month',
SUM(IFNULL(sag2.7690_1_month,0)) AS '7690_1_month',

SUM(IFNULL(sag2.7729_1_year,0)) AS '7729_1_year',
SUM(IFNULL(sag2.7730_1_year,0)) AS '7730_1_year',
SUM(IFNULL(sag2.7731_1_year,0)) AS '7731_1_year',
SUM(IFNULL(sag2.7732_1_year,0)) AS '7732_1_year',
SUM(IFNULL(sag2.7733_1_year,0)) AS '7733_1_year',
SUM(IFNULL(sag2.7734_1_year,0)) AS '7734_1_year',
SUM(IFNULL(sag2.7689_1_year,0)) AS '7689_1_year',
SUM(IFNULL(sag2.7690_1_year,0)) AS '7690_1_year',

SUM(IFNULL(sag2.7729_1_quater,0)) AS '7729_1_quater',
SUM(IFNULL(sag2.7730_1_quater,0)) AS '7730_1_quater',
SUM(IFNULL(sag2.7731_1_quater,0)) AS '7731_1_quater',
SUM(IFNULL(sag2.7732_1_quater,0)) AS '7732_1_quater',
SUM(IFNULL(sag2.7733_1_quater,0)) AS '7733_1_quater',
SUM(IFNULL(sag2.7734_1_quater,0)) AS '7734_1_quater',
SUM(IFNULL(sag2.7689_1_quater,0)) AS '7689_1_quater',
SUM(IFNULL(sag2.7690_1_quater,0)) AS '7690_1_quater'
FROM
(
SELECT sag1.District,sag1.fname,sag1.idlevel2,
SUM(IFNULL(sag1.7729_1_month,0)) AS '7729_1_month',
SUM(IFNULL(sag1.7730_1_month,0)) AS '7730_1_month',
SUM(IFNULL(sag1.7731_1_month,0)) AS '7731_1_month',
SUM(IFNULL(sag1.7732_1_month,0)) AS '7732_1_month',
SUM(IFNULL(sag1.7733_1_month,0)) AS '7733_1_month',
SUM(IFNULL(sag1.7734_1_month,0)) AS '7734_1_month',
SUM(IFNULL(sag1.7689_1_month,0)) AS '7689_1_month',
SUM(IFNULL(sag1.7690_1_month,0)) AS '7690_1_month',

SUM(IFNULL(sag1.7729_1_year,0)) AS '7729_1_year',
SUM(IFNULL(sag1.7730_1_year,0)) AS '7730_1_year',
SUM(IFNULL(sag1.7731_1_year,0)) AS '7731_1_year',
SUM(IFNULL(sag1.7732_1_year,0)) AS '7732_1_year',
SUM(IFNULL(sag1.7733_1_year,0)) AS '7733_1_year',
SUM(IFNULL(sag1.7734_1_year,0)) AS '7734_1_year',
SUM(IFNULL(sag1.7689_1_year,0)) AS '7689_1_year',
SUM(IFNULL(sag1.7690_1_year,0)) AS '7690_1_year',

SUM(IFNULL(sag1.7729_1_quater,0)) AS '7729_1_quater',
SUM(IFNULL(sag1.7730_1_quater,0)) AS '7730_1_quater',
SUM(IFNULL(sag1.7731_1_quater,0)) AS '7731_1_quater',
SUM(IFNULL(sag1.7732_1_quater,0)) AS '7732_1_quater',
SUM(IFNULL(sag1.7733_1_quater,0)) AS '7733_1_quater',
SUM(IFNULL(sag1.7734_1_quater,0)) AS '7734_1_quater',
SUM(IFNULL(sag1.7689_1_quater,0)) AS '7689_1_quater',
SUM(IFNULL(sag1.7690_1_quater,0)) AS '7690_1_quater'

FROM
(
SELECT sag.District,sag.fname,sag.idlevel2,
CASE WHEN sag.dataelementid=7729 AND sag.time='month' THEN  sag.value END AS '7729_1_month',
CASE WHEN sag.dataelementid=7730 AND sag.time='month' THEN  sag.value END AS '7730_1_month',
CASE WHEN sag.dataelementid=7731 AND sag.time='month' THEN  sag.value END AS '7731_1_month',
CASE WHEN sag.dataelementid=7732 AND sag.time='month' THEN  sag.value END AS '7732_1_month',
CASE WHEN sag.dataelementid=7733 AND sag.time='month' THEN  sag.value END AS '7733_1_month',
CASE WHEN sag.dataelementid=7734 AND sag.time='month' THEN  sag.value END AS '7734_1_month',
CASE WHEN sag.dataelementid=7689 AND sag.time='month' THEN  sag.value END AS '7689_1_month',
CASE WHEN sag.dataelementid=7690 AND sag.time='month' THEN  sag.value END AS '7690_1_month',

CASE WHEN sag.dataelementid=7729 AND sag.time='year' THEN  sag.value END AS '7729_1_year',
CASE WHEN sag.dataelementid=7730 AND sag.time='year' THEN  sag.value END AS '7730_1_year',
CASE WHEN sag.dataelementid=7731 AND sag.time='year' THEN  sag.value END AS '7731_1_year',
CASE WHEN sag.dataelementid=7732 AND sag.time='year' THEN  sag.value END AS '7732_1_year',
CASE WHEN sag.dataelementid=7733 AND sag.time='year' THEN  sag.value END AS '7733_1_year',
CASE WHEN sag.dataelementid=7734 AND sag.time='year' THEN  sag.value END AS '7734_1_year',
CASE WHEN sag.dataelementid=7689 AND sag.time='year' THEN  sag.value END AS '7689_1_year',
CASE WHEN sag.dataelementid=7690 AND sag.time='year' THEN  sag.value END AS '7690_1_year',

CASE WHEN sag.dataelementid=7729 AND sag.time='quater' THEN  sag.value END AS '7729_1_quater',
CASE WHEN sag.dataelementid=7730 AND sag.time='quater' THEN  sag.value END AS '7730_1_quater',
CASE WHEN sag.dataelementid=7731 AND sag.time='quater' THEN  sag.value END AS '7731_1_quater',
CASE WHEN sag.dataelementid=7732 AND sag.time='quater' THEN  sag.value END AS '7732_1_quater',
CASE WHEN sag.dataelementid=7733 AND sag.time='quater' THEN  sag.value END AS '7733_1_quater',
CASE WHEN sag.dataelementid=7734 AND sag.time='quater' THEN  sag.value END AS '7734_1_quater',
CASE WHEN sag.dataelementid=7689 AND sag.time='quater' THEN  sag.value END AS '7689_1_quater',
CASE WHEN sag.dataelementid=7690 AND sag.time='quater' THEN  sag.value END AS '7690_1_quater'

FROM
#month
(
SELECT asd.District,asd.fname,asd1.dataelementid,asd1.value AS 'value',asd.idlevel2,'month' AS 'time'
FROM
(
SELECT os.organisationunitid,ou1.name AS 'fname',og.name AS 'gname',ou.name AS 'District',os.idlevel2
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou1 ON ou1.organisationunitid = os.organisationunitid
WHERE og.name IN ('District','PHCs')


)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7729,7730,7731,7732,7733,7734,7689,7690)
AND dv.categoryoptioncomboid IN (1)
AND MONTH(p.startdate) = MONTH('2013-09-01')
AND YEAR(p.startdate) = YEAR('2013-09-01')
AND periodtypeid = 3
)asd1

ON asd.organisationunitid = asd1.sourceid



UNION
#current_year
SELECT asd.District,asd.fname,asd1.dataelementid,asd1.value AS 'value',asd.idlevel2,'year' AS 'time'
FROM
(
SELECT os.organisationunitid,ou1.name AS 'fname',og.name AS 'gname',ou.name AS 'District',os.idlevel2
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou1 ON ou1.organisationunitid = os.organisationunitid
WHERE og.name IN ('District','PHCs')


)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7729,7730,7731,7732,7733,7734,7689,7690)
AND dv.categoryoptioncomboid IN (1)
AND YEAR(p.startdate) = YEAR('2013-09-01')
AND periodtypeid = 3
)asd1

ON asd.organisationunitid = asd1.sourceid



UNION
#up_to_reporting_quater
SELECT asd.District,asd.fname,asd1.dataelementid,asd1.value AS 'value',asd.idlevel2,'quater' AS 'time'
FROM
(
SELECT os.organisationunitid,ou1.name AS 'fname',og.name AS 'gname',ou.name AS 'District',os.idlevel2
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou1 ON ou1.organisationunitid = os.organisationunitid
WHERE og.name IN ('District','PHCs')


)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7729,7730,7731,7732,7733,7734,7689,7690)
AND dv.categoryoptioncomboid IN (1)
AND CASE WHEN MONTH('2013-09-01') < 4 THEN MONTH(p.startdate) BETWEEN 1 AND MONTH('2013-09-01')
	WHEN  MONTH('2013-09-01') BETWEEN 4 AND 6 THEN MONTH(p.startdate) BETWEEN 4 AND MONTH('2013-09-01')
	WHEN  MONTH('2013-09-01') BETWEEN 7 AND 9 THEN MONTH(p.startdate) BETWEEN 7 AND MONTH('2013-09-01')
	WHEN  MONTH('2013-09-01') > 9 THEN MONTH(p.startdate) BETWEEN 10 AND MONTH('2013-09-01')
	END
AND periodtypeid = 3
)asd1

ON asd.organisationunitid = asd1.sourceid



)sag
)sag1
GROUP BY sag1.District,sag1.fname
)sag2
GROUP BY idlevel2