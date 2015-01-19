SELECT o3.name,o3.sub_name,
SUM(IFNULL(sag2.28_6,0)) AS '28_6',
SUM(IFNULL(sag2.30_8,0)) AS '30_8', 
SUM(IFNULL(sag2.31_9,0)) AS '31_9', 
SUM(IFNULL(sag2.32_10,0)) AS '32_10', 
SUM(IFNULL(sag2.33_11,0)) AS '33_11', 
SUM(IFNULL(sag2.34_12,0)) AS '34_12',
SUM(IFNULL(sag2.35_13,0)) AS '35_13',
SUM(IFNULL(sag2.123_121,0)) AS '123_121',
SUM(IFNULL(sag2.126_124,0)) AS '126_124',
SUM(IFNULL(sag2.37_15,0)) AS '37_15',
SUM(IFNULL(sag2.36_14,0)) AS '36_14',
SUM(IFNULL(sag2.sub_total_1,0)) AS 'sub_total_1',
SUM(IFNULL(sag2.38_16,0)) AS '38_16',
SUM(IFNULL(sag2.39_17,0)) AS '39_17',
SUM(IFNULL(sag2.40_18,0)) AS '40_18',
SUM(IFNULL(sag2.114_112,0)) AS '114_112',
SUM(IFNULL(sag2.117_115,0)) AS '117_115',
SUM(IFNULL(sag2.41_19,0)) AS '41_19',
SUM(IFNULL(sag2.120_118,0)) AS '120_118',
SUM(IFNULL(sag2.42_20,0)) AS '42_20',
SUM(IFNULL(sag2.sub_total_2,0)) AS 'sub_total_2',
SUM(IFNULL(sag2.grand_total,0)) AS 'grand_total'




FROM
(
SELECT o1.name,o2.sub_name,

0 AS '28_6',
0 AS '30_8', 
0 AS '31_9', 
0 AS '32_10', 
0 AS '33_11', 
0 AS '34_12',
0 AS '35_13',
0 AS '123_121',
0 AS '126_124',
0 AS '37_15',
0 AS '36_14',
0 AS 'sub_total_1',
0 AS '38_16',
0 AS '39_17',
0 AS '40_18',
0 AS '117_115',
0 AS '114_112',
0 AS '41_19',
0 AS '120_118',
0 AS '42_20',
0 AS 'sub_total_2',
0 AS 'grand_total'

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
SUM(IFNULL(sag1.28,0)+IFNULL(sag1.6,0)) AS '28_6',
SUM(IFNULL(sag1.30,0)+IFNULL(sag1.8,0)) AS '30_8', 
SUM(IFNULL(sag1.31,0)+IFNULL(sag1.9,0)) AS '31_9', 
SUM(IFNULL(sag1.32,0)+IFNULL(sag1.10,0)) AS '32_10', 
SUM(IFNULL(sag1.33,0)+IFNULL(sag1.11,0)) AS '33_11', 
SUM(IFNULL(sag1.34,0)+IFNULL(sag1.12,0)) AS '34_12',
SUM(IFNULL(sag1.35,0)+IFNULL(sag1.13,0)) AS '35_13',
SUM(IFNULL(sag1.123,0)+IFNULL(sag1.121,0)) AS '123_121',
SUM(IFNULL(sag1.126,0)+IFNULL(sag1.124,0)) AS '126_124',
SUM(IFNULL(sag1.37,0)+IFNULL(sag1.15,0)) AS '37_15',
SUM(IFNULL(sag1.36,0)+IFNULL(sag1.14,0)) AS '36_14',
SUM(IFNULL(sag1.28,0)+IFNULL(sag1.6,0)+IFNULL(sag1.30,0)+IFNULL(sag1.8,0)+IFNULL(sag1.31,0)+IFNULL(sag1.9,0)+
    IFNULL(sag1.32,0)+IFNULL(sag1.10,0)+IFNULL(sag1.33,0)+IFNULL(sag1.11,0)+IFNULL(sag1.34,0)+IFNULL(sag1.12,0)+
    IFNULL(sag1.35,0)+IFNULL(sag1.13,0)+IFNULL(sag1.123,0)+IFNULL(sag1.121,0)+IFNULL(sag1.126,0)+IFNULL(sag1.124,0)+
    IFNULL(sag1.37,0)+IFNULL(sag1.15,0)+IFNULL(sag1.36,0)+IFNULL(sag1.14,0)) AS 'sub_total_1',
SUM(IFNULL(sag1.38,0)+IFNULL(sag1.16,0)) AS '38_16',
SUM(IFNULL(sag1.39,0)+IFNULL(sag1.17,0)) AS '39_17',
SUM(IFNULL(sag1.40,0)+IFNULL(sag1.18,0)) AS '40_18',
SUM(IFNULL(sag1.117,0)+IFNULL(sag1.115,0)) AS '117_115',
SUM(IFNULL(sag1.114,0)+IFNULL(sag1.112,0)) AS '114_112',
SUM(IFNULL(sag1.41,0)+IFNULL(sag1.19,0)) AS '41_19',
SUM(IFNULL(sag1.120,0)+IFNULL(sag1.118,0)) AS '120_118',
SUM(IFNULL(sag1.42,0)+IFNULL(sag1.20,0)) AS '42_20',
SUM(IFNULL(sag1.38,0)+IFNULL(sag1.16,0)+IFNULL(sag1.39,0)+IFNULL(sag1.17,0)+IFNULL(sag1.40,0)+IFNULL(sag1.18,0)+
    IFNULL(sag1.117,0)+IFNULL(sag1.115,0)+IFNULL(sag1.41,0)+IFNULL(sag1.19,0)+IFNULL(sag1.120,0)+IFNULL(sag1.118,0)+
    IFNULL(sag1.120,0)+IFNULL(sag1.118,0)+IFNULL(sag1.42,0)+IFNULL(sag1.20,0)) AS 'sub_total_2',
    
SUM(IFNULL(sag1.28,0)+IFNULL(sag1.6,0)+IFNULL(sag1.30,0)+IFNULL(sag1.8,0)+IFNULL(sag1.31,0)+IFNULL(sag1.9,0)+
    IFNULL(sag1.32,0)+IFNULL(sag1.10,0)+IFNULL(sag1.33,0)+IFNULL(sag1.11,0)+IFNULL(sag1.34,0)+IFNULL(sag1.12,0)+
    IFNULL(sag1.35,0)+IFNULL(sag1.13,0)+IFNULL(sag1.123,0)+IFNULL(sag1.121,0)+IFNULL(sag1.126,0)+IFNULL(sag1.124,0)+
    IFNULL(sag1.37,0)+IFNULL(sag1.15,0)+IFNULL(sag1.36,0)+IFNULL(sag1.14,0)+IFNULL(sag1.38,0)+IFNULL(sag1.16,0)+IFNULL(sag1.39,0)+IFNULL(sag1.17,0)+IFNULL(sag1.40,0)+IFNULL(sag1.18,0)+
    IFNULL(sag1.117,0)+IFNULL(sag1.115,0)+IFNULL(sag1.41,0)+IFNULL(sag1.19,0)+IFNULL(sag1.120,0)+IFNULL(sag1.118,0)+
    IFNULL(sag1.120,0)+IFNULL(sag1.118,0)+IFNULL(sag1.42,0)+IFNULL(sag1.20,0)) AS 'grand_total'


FROM
(
SELECT sag.name,sag.sub_name,sag.parentid,
CASE WHEN sag.dataelementid=28 THEN sag.value END AS '28', 
CASE WHEN sag.dataelementid=6 THEN sag.value END AS '6', 
CASE WHEN sag.dataelementid=30 THEN sag.value END AS '30', 
CASE WHEN sag.dataelementid=8  THEN sag.value END AS '8', 
CASE WHEN sag.dataelementid=31 THEN sag.value END AS '31', 
CASE WHEN sag.dataelementid=9 THEN sag.value END AS '9', 
CASE WHEN sag.dataelementid=32 THEN sag.value END AS '32', 
CASE WHEN sag.dataelementid=10 THEN sag.value END AS '10', 
CASE WHEN sag.dataelementid=33 THEN sag.value END AS '33', 
CASE WHEN sag.dataelementid=11 THEN sag.value END AS '11', 
CASE WHEN sag.dataelementid=34 THEN sag.value END AS '34', 
CASE WHEN sag.dataelementid=12 THEN sag.value END AS '12', 
CASE WHEN sag.dataelementid=35 THEN sag.value END AS '35', 
CASE WHEN sag.dataelementid=13 THEN sag.value END AS '13', 
CASE WHEN sag.dataelementid=123 THEN sag.value END AS '123', 
CASE WHEN sag.dataelementid=121 THEN sag.value END AS '121', 
CASE WHEN sag.dataelementid=126 THEN sag.value END AS '126', 
CASE WHEN sag.dataelementid=124 THEN sag.value END AS '124', 
CASE WHEN sag.dataelementid=37 THEN sag.value END AS '37', 
CASE WHEN sag.dataelementid=15 THEN sag.value END AS '15', 
CASE WHEN sag.dataelementid=36 THEN sag.value END AS '36', 
CASE WHEN sag.dataelementid=14 THEN sag.value END AS '14', 
CASE WHEN sag.dataelementid=38 THEN sag.value END AS '38', 
CASE WHEN sag.dataelementid=16 THEN sag.value END AS '16', 
CASE WHEN sag.dataelementid=39 THEN sag.value END AS '39', 
CASE WHEN sag.dataelementid=17 THEN sag.value END AS '17', 
CASE WHEN sag.dataelementid=40 THEN sag.value END AS '40', 
CASE WHEN sag.dataelementid=18 THEN sag.value END AS '18', 
CASE WHEN sag.dataelementid=117 THEN sag.value END AS '117',
CASE WHEN sag.dataelementid=115 THEN sag.value END AS '115', 
CASE WHEN sag.dataelementid=114 THEN sag.value END AS '114', 
CASE WHEN sag.dataelementid=112 THEN sag.value END AS '112', 
CASE WHEN sag.dataelementid=41 THEN sag.value END AS '41', 
CASE WHEN sag.dataelementid=19 THEN sag.value END AS '19', 
CASE WHEN sag.dataelementid=120 THEN sag.value END AS '120', 
CASE WHEN sag.dataelementid=118 THEN sag.value END AS '118', 
CASE WHEN sag.dataelementid=42 THEN sag.value END AS '42', 
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
WHERE og.name IN ('CSD','LSD','District')
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
WHERE dv.dataelementid IN (28,6,30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,
			   37,15,36,14,38,16,39,17,40,18,117,115,114,112,41,19,
			   120,118,42,20)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-12-01' AND '2013-12-31'
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
WHERE dv.dataelementid IN (28,6,30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,
			   37,15,36,14,38,16,39,17,40,18,117,115,114,112,41,19,
			   120,118,42,20)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-12-01' AND '2013-12-31'
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
WHERE og.name IN ('Silo','CSD','LSD','District')
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
WHERE dv.dataelementid IN (28,6,30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,
			   37,15,36,14,38,16,39,17,40,18,117,115,114,112,41,19,
			   120,118,42,20)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-12-01' AND '2013-12-31'
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
WHERE og.name IN ('Silo','CSD','LSD','District')
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
WHERE dv.dataelementid IN (28,6,30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,
			   37,15,36,14,38,16,39,17,40,18,117,115,114,112,41,19,
			   120,118,42,20)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-12-01' AND '2013-12-31'
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
