
SELECT sag1.name,sag1.sub_name,
SUM(IFNULL(sag1.50,0)) AS '50',
SUM(IFNULL(sag1.52,0)) AS '52', 
SUM(IFNULL(sag1.53,0)) AS '53', 
SUM(IFNULL(sag1.54,0)) AS '54', 
SUM(IFNULL(sag1.55,0)) AS '55', 
SUM(IFNULL(sag1.56,0)) AS '56',
SUM(IFNULL(sag1.57,0)) AS '57',
SUM(IFNULL(sag1.122,0)) AS '122',
SUM(IFNULL(sag1.125,0)) AS '125',
SUM(IFNULL(sag1.59,0)) AS '59',
SUM(IFNULL(sag1.64,0)) AS '64',
SUM(IFNULL(sag1.60,0)) AS '60',
SUM(IFNULL(sag1.61,0)) AS '61',
SUM(IFNULL(sag1.62,0)) AS '62',
SUM(IFNULL(sag1.116,0)) AS '116',
SUM(IFNULL(sag1.113,0)) AS '113',
SUM(IFNULL(sag1.63,0)) AS '63',
SUM(IFNULL(sag1.119,0)) AS '119',
SUM(IFNULL(sag1.64,0)) AS '64'




FROM
(
SELECT sag.name,sag.sub_name,sag.gname,sag.parentid,
CASE WHEN sag.dataelementid=50 THEN sag.value END AS '50', 
CASE WHEN sag.dataelementid=52 THEN sag.value END AS '52', 
CASE WHEN sag.dataelementid=53 THEN sag.value END AS '53', 
CASE WHEN sag.dataelementid=54  THEN sag.value END AS '54', 
CASE WHEN sag.dataelementid=55 THEN sag.value END AS '55', 
CASE WHEN sag.dataelementid=56 THEN sag.value END AS '56', 
CASE WHEN sag.dataelementid=57 THEN sag.value END AS '57', 
CASE WHEN sag.dataelementid=122 THEN sag.value END AS '122', 
CASE WHEN sag.dataelementid=125 THEN sag.value END AS '125', 
CASE WHEN sag.dataelementid=59 THEN sag.value END AS '59', 
CASE WHEN sag.dataelementid=64 THEN sag.value END AS '64', 
CASE WHEN sag.dataelementid=60 THEN sag.value END AS '60', 
CASE WHEN sag.dataelementid=61 THEN sag.value END AS '61', 
CASE WHEN sag.dataelementid=62 THEN sag.value END AS '62', 
CASE WHEN sag.dataelementid=116 THEN sag.value END AS '116', 
CASE WHEN sag.dataelementid=113 THEN sag.value END AS '113', 
CASE WHEN sag.dataelementid=63 THEN sag.value END AS '63', 
CASE WHEN sag.dataelementid=119 THEN sag.value END AS '119', 
CASE WHEN sag.dataelementid=64 THEN sag.value END AS '64' 

FROM
(
SELECT asd.organisationunitid,asd.name,'D/ Total' AS 'sub_name',asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value',asd.parentid
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD')
#And ou.name like 'Division Chittagong'
#AND os.idlevel3 IN (
	#SELECT organisationunitid FROM organisationunit ou WHERE ou.name LIKE 'Division Chittagong'
	#)
	
)asd

LEFT JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (50,52,53,54,55,56,57,122,125,59,64,60,61,62,116,113,63,119,64)
AND dv.categoryoptioncomboid IN (1)
AND WEEK(p.startdate) = WEEK('2013-12-23')
AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd.name,asd1.dataelementid

UNION

SELECT asd.organisationunitid,asd.name,'Silo' AS 'sub_name',asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value',asd.parentid
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('Silo')
#And ou.name like 'Division Chittagong'
#AND os.idlevel3 IN (
	#SELECT organisationunitid FROM organisationunit ou WHERE ou.name LIKE 'Division Chittagong'
	#)
	
)asd

LEFT JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (50,52,53,54,55,56,57,122,125,59,64,60,61,62,116,113,63,119,64)
AND dv.categoryoptioncomboid IN (1)
AND WEEK(p.startdate) = WEEK('2013-12-23')
AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd.name,asd1.dataelementid


UNION


SELECT asd.organisationunitid,asd.name,'Total' AS 'sub_name',asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value',asd.parentid
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('Silo','CSD','LSD')
#And ou.name like 'Division Chittagong'
#AND os.idlevel3 IN (
	#SELECT organisationunitid FROM organisationunit ou WHERE ou.name LIKE 'Division Chittagong'
	#)
	
)asd

LEFT JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,p.startdate,
CASE WHEN dv.dataelementid IN (50) THEN 'a'
 WHEN dv.dataelementid IN (52) THEN 'b'
 WHEN dv.dataelementid IN (53) THEN 'c'
 WHEN dv.dataelementid IN (54) THEN 'd'
 WHEN dv.dataelementid IN (55) THEN 'e'
 WHEN dv.dataelementid IN (36) THEN 'f'
 WHEN dv.dataelementid IN (57) THEN 'g'
 WHEN dv.dataelementid IN (122) THEN 'h'
 WHEN dv.dataelementid IN (125) THEN 'i'
 WHEN dv.dataelementid IN (59) THEN 'j'
 WHEN dv.dataelementid IN (64) THEN 'k'
 WHEN dv.dataelementid IN (60) THEN 'l'
 WHEN dv.dataelementid IN (61) THEN 'm'
 WHEN dv.dataelementid IN (62) THEN 'n'
 WHEN dv.dataelementid IN (116) THEN 'o'
 WHEN dv.dataelementid IN (113) THEN 'p'
 WHEN dv.dataelementid IN (63) THEN 'q'
 WHEN dv.dataelementid IN (119) THEN 'r'
 WHEN dv.dataelementid IN (64) THEN 's' END AS 'gr_de'

FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (50,52,53,54,55,56,57,122,125,59,64,60,61,62,116,113,63,119,64)
AND dv.categoryoptioncomboid IN (1)
AND WEEK(p.startdate) = WEEK('2013-12-23')
AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd.name,asd1.gr_de,asd.gname


)sag
)sag1

GROUP BY sag1.name,sag1.sub_name

UNION


SELECT 'Bangaladesh' AS 'name',sag1.sub_name,
SUM(IFNULL(sag1.50,0)) AS '50',
SUM(IFNULL(sag1.52,0)) AS '52', 
SUM(IFNULL(sag1.53,0)) AS '53', 
SUM(IFNULL(sag1.54,0)) AS '54', 
SUM(IFNULL(sag1.55,0)) AS '55', 
SUM(IFNULL(sag1.56,0)) AS '56',
SUM(IFNULL(sag1.57,0)) AS '57',
SUM(IFNULL(sag1.122,0)) AS '122',
SUM(IFNULL(sag1.125,0)) AS '125',
SUM(IFNULL(sag1.59,0)) AS '59',
SUM(IFNULL(sag1.64,0)) AS '64',
SUM(IFNULL(sag1.60,0)) AS '60',
SUM(IFNULL(sag1.61,0)) AS '61',
SUM(IFNULL(sag1.62,0)) AS '62',
SUM(IFNULL(sag1.116,0)) AS '116',
SUM(IFNULL(sag1.113,0)) AS '113',
SUM(IFNULL(sag1.63,0)) AS '63',
SUM(IFNULL(sag1.119,0)) AS '119',
SUM(IFNULL(sag1.64,0)) AS '64'


FROM
(
SELECT sag.name,sag.sub_name,sag.gname,sag.parentid,

CASE WHEN sag.dataelementid=50 THEN sag.value END AS '50', 
CASE WHEN sag.dataelementid=52 THEN sag.value END AS '52', 
CASE WHEN sag.dataelementid=53 THEN sag.value END AS '53', 
CASE WHEN sag.dataelementid=54  THEN sag.value END AS '54', 
CASE WHEN sag.dataelementid=55 THEN sag.value END AS '55', 
CASE WHEN sag.dataelementid=56 THEN sag.value END AS '56', 
CASE WHEN sag.dataelementid=57 THEN sag.value END AS '57', 
CASE WHEN sag.dataelementid=122 THEN sag.value END AS '122', 
CASE WHEN sag.dataelementid=125 THEN sag.value END AS '125', 
CASE WHEN sag.dataelementid=59 THEN sag.value END AS '59', 
CASE WHEN sag.dataelementid=64 THEN sag.value END AS '64', 
CASE WHEN sag.dataelementid=60 THEN sag.value END AS '60', 
CASE WHEN sag.dataelementid=61 THEN sag.value END AS '61', 
CASE WHEN sag.dataelementid=62 THEN sag.value END AS '62', 
CASE WHEN sag.dataelementid=116 THEN sag.value END AS '116', 
CASE WHEN sag.dataelementid=113 THEN sag.value END AS '113', 
CASE WHEN sag.dataelementid=63 THEN sag.value END AS '63', 
CASE WHEN sag.dataelementid=119 THEN sag.value END AS '119', 
CASE WHEN sag.dataelementid=64 THEN sag.value END AS '64' 

FROM
(

SELECT asd.organisationunitid,asd.name,'Total' AS 'sub_name',asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value',asd.parentid
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('Silo','CSD','LSD')
#And ou.name like 'Division Chittagong'
#AND os.idlevel3 IN (
	#SELECT organisationunitid FROM organisationunit ou WHERE ou.name LIKE 'Division Chittagong'
	#)
	
)asd

LEFT JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,p.startdate,
CASE WHEN dv.dataelementid IN (50) THEN 'a'
 WHEN dv.dataelementid IN (52) THEN 'b'
 WHEN dv.dataelementid IN (53) THEN 'c'
 WHEN dv.dataelementid IN (54) THEN 'd'
 WHEN dv.dataelementid IN (55) THEN 'e'
 WHEN dv.dataelementid IN (36) THEN 'f'
 WHEN dv.dataelementid IN (57) THEN 'g'
 WHEN dv.dataelementid IN (122) THEN 'h'
 WHEN dv.dataelementid IN (125) THEN 'i'
 WHEN dv.dataelementid IN (59) THEN 'j'
 WHEN dv.dataelementid IN (64) THEN 'k'
 WHEN dv.dataelementid IN (60) THEN 'l'
 WHEN dv.dataelementid IN (61) THEN 'm'
 WHEN dv.dataelementid IN (62) THEN 'n'
 WHEN dv.dataelementid IN (116) THEN 'o'
 WHEN dv.dataelementid IN (113) THEN 'p'
 WHEN dv.dataelementid IN (63) THEN 'q'
 WHEN dv.dataelementid IN (119) THEN 'r'
 WHEN dv.dataelementid IN (64) THEN 's' END AS 'gr_de'

FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (50,52,53,54,55,56,57,122,125,59,64,60,61,62,116,113,63,119,64)
AND dv.categoryoptioncomboid IN (1)
AND WEEK(p.startdate) = WEEK('2013-12-23')
AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd.name,asd1.gr_de,asd.gname


)sag
)sag1

GROUP BY sag1.sub_name,sag1.parentid

