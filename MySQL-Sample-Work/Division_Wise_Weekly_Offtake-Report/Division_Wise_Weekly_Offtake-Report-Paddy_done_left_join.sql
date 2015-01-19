SELECT o3.name,o3.sub_name,
SUM(IFNULL(sag2.6,0)) AS '6',
SUM(IFNULL(sag2.8,0)) AS '8', 
SUM(IFNULL(sag2.9,0)) AS '9', 
SUM(IFNULL(sag2.10,0)) AS '10', 

SUM(IFNULL(sag2.Grand_Total,0)) AS 'Grand_Total'




FROM
(
SELECT o1.name,o2.sub_name,
0 AS '6',
0 AS '8', 
0 AS '9', 
0 AS '10'

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
     
     WHEN ou.organisationunitid=23 THEN 'National'
   
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
     
      WHEN ou.organisationunitid=23 THEN 'Grand Total'
     
     END AS 'sub_name'
     

FROM organisationunit ou
)o2
ON o1.organisationunitid = o2.organisationunitid
WHERE o1.name IS NOT NULL
ORDER BY o1.name,o2.sub_name
)o3

LEFT JOIN

(
SELECT sag1.name,sag1.sub_name,
SUM(IFNULL(sag1.6,0)) AS '6',
SUM(IFNULL(sag1.8,0)) AS '8', 
SUM(IFNULL(sag1.9,0)) AS '9', 
SUM(IFNULL(sag1.10,0)) AS '10', 
SUM(IFNULL(sag1.6,0)+IFNULL(sag1.8,0)+IFNULL(sag1.9,0)+IFNULL(sag1.10,0)) AS 'Grand_Total'


FROM
(
SELECT sag.name,sag.sub_name,sag.parentid,
CASE WHEN sag.dataelementid=16 THEN sag.value END AS '6', 
CASE WHEN sag.dataelementid=17 THEN sag.value END AS '8', 
CASE WHEN sag.dataelementid=19 THEN sag.value END AS '9', 
CASE WHEN sag.dataelementid=20  THEN sag.value END AS '10'

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
WHERE dv.dataelementid IN (16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-12-23' AND '2013-12-28'
#AND WEEK(p.startdate) = WEEK('2013-12-23')
#AND YEAR(p.startdate) = YEAR('2013-12-23')
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
WHERE dv.dataelementid IN (16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-12-23' AND '2013-12-28'
#AND WEEK(p.startdate) = WEEK('2013-12-23')
#AND YEAR(p.startdate) = YEAR('2013-12-23')
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
WHERE dv.dataelementid IN (16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-12-23' AND '2013-12-28'
#AND WEEK(p.startdate) = WEEK('2013-12-23')
#AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd.name,asd1.dataelementid

UNION

SELECT asd.organisationunitid,'National' AS 'name','Grand Total' AS 'sub_name',asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value',asd.parentid
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
WHERE dv.dataelementid IN (16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-12-23' AND '2013-12-28'
#AND WEEK(p.startdate) = WEEK('2013-12-23')
#AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd.parentid,asd1.dataelementid


)sag
)sag1

GROUP BY sag1.sub_name,sag1.name
ORDER BY sag1.name,sag1.sub_name

)sag2
ON sag2.sub_name=o3.sub_name AND sag2.name=o3.name

GROUP BY o3.sub_name,o3.name
ORDER BY o3.name,o3.sub_name

