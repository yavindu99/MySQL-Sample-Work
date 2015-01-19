
SELECT sag2.name,sag2.sub_name,
SUM(IFNULL(sag2.50,0)) AS '50',
SUM(IFNULL(sag2.52,0)) AS '52', 
SUM(IFNULL(sag2.53,0)) AS '53', 
SUM(IFNULL(sag2.54,0)) AS '54', 
SUM(IFNULL(sag2.55,0)) AS '55', 
SUM(IFNULL(sag2.56,0)) AS '56',
SUM(IFNULL(sag2.57,0)) AS '57',
SUM(IFNULL(sag2.122,0)) AS '122',
SUM(IFNULL(sag2.125,0)) AS '125',
SUM(IFNULL(sag2.59,0)) AS '59',
SUM(IFNULL(sag2.58,0)) AS '58',
SUM(IFNULL(sag2.60,0)) AS '60',
SUM(IFNULL(sag2.61,0)) AS '61',
SUM(IFNULL(sag2.62,0)) AS '62',
SUM(IFNULL(sag2.116,0)) AS '116',
SUM(IFNULL(sag2.113,0)) AS '113',
SUM(IFNULL(sag2.63,0)) AS '63',
SUM(IFNULL(sag2.119,0)) AS '119',
SUM(IFNULL(sag2.64,0)) AS '64'

FROM
(
SELECT o1.name,o2.sub_name,

0 AS '50',
0 AS '52', 
0 AS '53', 
0 AS '54', 
0 AS '55', 
0 AS '56',
0 AS '57',
0 AS '122',
0 AS '125',
0 AS '59',
0 AS '58',
0 AS '60',
0 AS '61',
0 AS '62',
0 AS '116',
0 AS '113',
0 AS '63',
0 AS '119',
0 AS '64'

FROM
(
SELECT ou.organisationunitid,
CASE WHEN ou.organisationunitid=1 THEN 'Division Barisal'
     WHEN ou.organisationunitid=2 THEN 'Division Barisal'
     WHEN ou.organisationunitid=3 THEN 'Division Barisal'
     
     WHEN ou.organisationunitid=4 THEN 'Division Chittagong'
     WHEN ou.organisationunitid=5 THEN 'Division Chittagong'
     WHEN ou.organisationunitid=6 THEN 'Division Chittagong'
     
     WHEN ou.organisationunitid=7 THEN 'Division Dhaka'
     WHEN ou.organisationunitid=8 THEN 'Division Dhaka'
     WHEN ou.organisationunitid=22 THEN 'Division Dhaka'
     
     WHEN ou.organisationunitid=10 THEN 'Division Khulna'
     WHEN ou.organisationunitid=11 THEN 'Division Khulna'
     WHEN ou.organisationunitid=12 THEN 'Division Khulna'
     
     WHEN ou.organisationunitid=13 THEN 'Division Rajshahi'
     WHEN ou.organisationunitid=14 THEN 'Division Rajshahi'
     WHEN ou.organisationunitid=15 THEN 'Division Rajshahi'
     
     WHEN ou.organisationunitid=16 THEN 'Division Rangpur'
     WHEN ou.organisationunitid=17 THEN 'Division Rangpur'
     WHEN ou.organisationunitid=18 THEN 'Division Rangpur'
     
     WHEN ou.organisationunitid=19 THEN 'Division Sylhet'
     WHEN ou.organisationunitid=20 THEN 'Division Sylhet'
     WHEN ou.organisationunitid=21 THEN 'Division Sylhet'
   
     END AS 'name'
FROM organisationunit ou
)o1
INNER JOIN
(
SELECT ou.organisationunitid,
CASE WHEN ou.organisationunitid=1 THEN 'Silo'
     WHEN ou.organisationunitid=2 THEN 'D/ Total'
     WHEN ou.organisationunitid=3 THEN 'Total'
     
     WHEN ou.organisationunitid=4 THEN 'Silo'
     WHEN ou.organisationunitid=5 THEN 'D/ Total'
     WHEN ou.organisationunitid=6 THEN 'Total'
     
     WHEN ou.organisationunitid=7 THEN 'Silo'
     WHEN ou.organisationunitid=8 THEN 'D/ Total'
     WHEN ou.organisationunitid=22 THEN 'Total'
     
     WHEN ou.organisationunitid=10 THEN 'Silo'
     WHEN ou.organisationunitid=11 THEN 'D/ Total'
     WHEN ou.organisationunitid=12 THEN 'Total'
     
     WHEN ou.organisationunitid=13 THEN 'Silo'
     WHEN ou.organisationunitid=14 THEN 'D/ Total'
     WHEN ou.organisationunitid=15 THEN 'Total'
     
     WHEN ou.organisationunitid=16 THEN 'Silo'
     WHEN ou.organisationunitid=17 THEN 'D/ Total'
     WHEN ou.organisationunitid=18 THEN 'Total'
     
     WHEN ou.organisationunitid=19 THEN 'Silo'
     WHEN ou.organisationunitid=20 THEN 'D/ Total'
     WHEN ou.organisationunitid=21 THEN 'Total'
     END AS 'sub_name'
     

FROM organisationunit ou
)o2
ON o1.organisationunitid = o2.organisationunitid
WHERE o1.name IS NOT NULL
#ORDER BY o1.name,o2.sub_name


UNION


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
SUM(IFNULL(sag1.58,0)) AS '58',
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
SELECT sag.name,sag.sub_name,sag.parentid,
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
CASE WHEN sag.dataelementid=58 THEN sag.value END AS '58', 
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
WHERE dv.dataelementid IN (50,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,119,64)
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
WHERE dv.dataelementid IN (50,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,119,64)
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
SELECT dv.sourceid,dv.dataelementid,dv.value,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (50,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,119,64)
AND dv.categoryoptioncomboid IN (1)
AND WEEK(p.startdate) = WEEK('2013-12-23')
AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd.name,asd1.dataelementid

UNION

SELECT asd.organisationunitid,'National Total' AS 'name','Grand_Total' AS 'sub_name',asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value',asd.parentid
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
SELECT dv.sourceid,dv.dataelementid,dv.value,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (50,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,119,64)
AND dv.categoryoptioncomboid IN (1)
AND WEEK(p.startdate) = WEEK('2013-12-23')
AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd.parentid,asd1.dataelementid


)sag
)sag1

GROUP BY sag1.sub_name,sag1.name
#ORDER BY sag1.name,sag1.sub_name
)sag2
GROUP BY sag2.sub_name,sag2.name
ORDER BY sag2.name,sag2.sub_name
