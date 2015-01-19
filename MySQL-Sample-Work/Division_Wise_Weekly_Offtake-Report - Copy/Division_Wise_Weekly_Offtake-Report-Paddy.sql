
SELECT sag1.name,sag1.sub_name,
SUM(IFNULL(sag1.6,0)) AS '6',
SUM(IFNULL(sag1.8,0)) AS '8', 
SUM(IFNULL(sag1.9,0)) AS '9', 
SUM(IFNULL(sag1.10,0)) AS '10', 
SUM(IFNULL(sag1.11,0)) AS '11', 
SUM(IFNULL(sag1.12,0)) AS '12',
SUM(IFNULL(sag1.13,0)) AS '13',
SUM(IFNULL(sag1.15,0)) AS '15',
SUM(IFNULL(sag1.14,0)) AS '14',
SUM(IFNULL(sag1.16,0)) AS '16',
SUM(IFNULL(sag1.17,0)) AS '17',
SUM(IFNULL(sag1.18,0)) AS '18',
SUM(IFNULL(sag1.115,0)) AS '115',
SUM(IFNULL(sag1.112,0)) AS '112',
SUM(IFNULL(sag1.19,0)) AS '19',
SUM(IFNULL(sag1.118,0)) AS '118',
SUM(IFNULL(sag1.63,0)) AS '63',
SUM(IFNULL(sag1.20,0)) AS '20'


FROM
(
SELECT sag.name,sag.sub_name,sag.gname,sag.parentid,
CASE WHEN sag.dataelementid=6 THEN sag.value END AS '6', 
CASE WHEN sag.dataelementid=8 THEN sag.value END AS '8', 
CASE WHEN sag.dataelementid=9 THEN sag.value END AS '9', 
CASE WHEN sag.dataelementid=10  THEN sag.value END AS '10', 
CASE WHEN sag.dataelementid=11 THEN sag.value END AS '11', 
CASE WHEN sag.dataelementid=12 THEN sag.value END AS '12', 
CASE WHEN sag.dataelementid=13 THEN sag.value END AS '13', 
CASE WHEN sag.dataelementid=15 THEN sag.value END AS '15', 
CASE WHEN sag.dataelementid=14 THEN sag.value END AS '14', 
CASE WHEN sag.dataelementid=16 THEN sag.value END AS '16', 
CASE WHEN sag.dataelementid=17 THEN sag.value END AS '17', 
CASE WHEN sag.dataelementid=18 THEN sag.value END AS '18', 
CASE WHEN sag.dataelementid=115 THEN sag.value END AS '115', 
CASE WHEN sag.dataelementid=112 THEN sag.value END AS '112', 
CASE WHEN sag.dataelementid=19 THEN sag.value END AS '19', 
CASE WHEN sag.dataelementid=118 THEN sag.value END AS '118', 
CASE WHEN sag.dataelementid=63 THEN sag.value END AS '63', 
CASE WHEN sag.dataelementid=20 THEN sag.value END AS '20' 

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
WHERE dv.dataelementid IN (6,8,9,10,11,12,13,15,14,16,17,18,115,112,19,118,20)
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
WHERE dv.dataelementid IN (6,8,9,10,11,12,13,15,14,16,17,18,115,112,19,118,20)
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
CASE WHEN dv.dataelementid IN (6) THEN 'a'
 WHEN dv.dataelementid IN (8) THEN 'b'
 WHEN dv.dataelementid IN (9) THEN 'c'
 WHEN dv.dataelementid IN (10) THEN 'd'
 WHEN dv.dataelementid IN (11) THEN 'e'
 WHEN dv.dataelementid IN (12) THEN 'f'
 WHEN dv.dataelementid IN (14) THEN 'g'
 WHEN dv.dataelementid IN (15) THEN 'h'
 WHEN dv.dataelementid IN (14) THEN 'i'
 WHEN dv.dataelementid IN (16) THEN 'j'
 WHEN dv.dataelementid IN (17) THEN 'k'
 WHEN dv.dataelementid IN (18) THEN 'l'
 WHEN dv.dataelementid IN (115) THEN 'm'
 WHEN dv.dataelementid IN (112) THEN 'n'
 WHEN dv.dataelementid IN (118) THEN 'o'
 WHEN dv.dataelementid IN (20) THEN 'p'
 WHEN dv.dataelementid IN (19) THEN 'q'
 END AS 'gr_de'

FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (6,8,9,10,11,12,13,15,14,16,17,18,115,112,19,118,20)
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
SUM(IFNULL(sag1.6,0)) AS '6',
SUM(IFNULL(sag1.8,0)) AS '8', 
SUM(IFNULL(sag1.9,0)) AS '9', 
SUM(IFNULL(sag1.10,0)) AS '10', 
SUM(IFNULL(sag1.11,0)) AS '11', 
SUM(IFNULL(sag1.12,0)) AS '12',
SUM(IFNULL(sag1.13,0)) AS '13',
SUM(IFNULL(sag1.15,0)) AS '15',
SUM(IFNULL(sag1.14,0)) AS '14',
SUM(IFNULL(sag1.16,0)) AS '16',
SUM(IFNULL(sag1.17,0)) AS '17',
SUM(IFNULL(sag1.18,0)) AS '18',
SUM(IFNULL(sag1.115,0)) AS '115',
SUM(IFNULL(sag1.112,0)) AS '112',
SUM(IFNULL(sag1.19,0)) AS '19',
SUM(IFNULL(sag1.118,0)) AS '118',
SUM(IFNULL(sag1.63,0)) AS '63',
SUM(IFNULL(sag1.20,0)) AS '20'

FROM
(
SELECT sag.name,sag.sub_name,sag.gname,sag.parentid,

CASE WHEN sag.dataelementid=6 THEN sag.value END AS '6', 
CASE WHEN sag.dataelementid=8 THEN sag.value END AS '8', 
CASE WHEN sag.dataelementid=9 THEN sag.value END AS '9', 
CASE WHEN sag.dataelementid=10  THEN sag.value END AS '10', 
CASE WHEN sag.dataelementid=11 THEN sag.value END AS '11', 
CASE WHEN sag.dataelementid=12 THEN sag.value END AS '12', 
CASE WHEN sag.dataelementid=13 THEN sag.value END AS '13', 
CASE WHEN sag.dataelementid=15 THEN sag.value END AS '15', 
CASE WHEN sag.dataelementid=14 THEN sag.value END AS '14', 
CASE WHEN sag.dataelementid=16 THEN sag.value END AS '16', 
CASE WHEN sag.dataelementid=17 THEN sag.value END AS '17', 
CASE WHEN sag.dataelementid=18 THEN sag.value END AS '18', 
CASE WHEN sag.dataelementid=115 THEN sag.value END AS '115', 
CASE WHEN sag.dataelementid=112 THEN sag.value END AS '112', 
CASE WHEN sag.dataelementid=19 THEN sag.value END AS '19', 
CASE WHEN sag.dataelementid=118 THEN sag.value END AS '118', 
CASE WHEN sag.dataelementid=63 THEN sag.value END AS '63', 
CASE WHEN sag.dataelementid=20 THEN sag.value END AS '20' 


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
CASE WHEN dv.dataelementid IN (6) THEN 'a'
 WHEN dv.dataelementid IN (8) THEN 'b'
 WHEN dv.dataelementid IN (9) THEN 'c'
 WHEN dv.dataelementid IN (10) THEN 'd'
 WHEN dv.dataelementid IN (11) THEN 'e'
 WHEN dv.dataelementid IN (12) THEN 'f'
 WHEN dv.dataelementid IN (14) THEN 'g'
 WHEN dv.dataelementid IN (15) THEN 'h'
 WHEN dv.dataelementid IN (14) THEN 'i'
 WHEN dv.dataelementid IN (16) THEN 'j'
 WHEN dv.dataelementid IN (17) THEN 'k'
 WHEN dv.dataelementid IN (18) THEN 'l'
 WHEN dv.dataelementid IN (115) THEN 'm'
 WHEN dv.dataelementid IN (112) THEN 'n'
 WHEN dv.dataelementid IN (118) THEN 'o'
 WHEN dv.dataelementid IN (20) THEN 'p'
 WHEN dv.dataelementid IN (19) THEN 'p'
 END AS 'gr_de'

FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (6,8,9,10,11,12,13,15,14,16,17,18,115,112,19,118,20)
AND dv.categoryoptioncomboid IN (1)
AND WEEK(p.startdate) = WEEK('2013-12-23')
AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd.name,asd1.gr_de,asd.gname


)sag
)sag1

GROUP BY sag1.sub_name,sag1.parentid

