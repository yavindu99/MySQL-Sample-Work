SELECT sag1.name,
SUM(IFNULL(sag1.28_silo,0)+IFNULL(sag1.6_silo,0)) AS '28_6_silo', 
SUM(IFNULL(sag1.30_silo,0)+IFNULL(sag1.8_silo,0)) AS '30_8_silo', 
SUM(IFNULL(sag1.31_silo,0)+IFNULL(sag1.9_silo,0)) AS '31_9_silo', 
SUM(IFNULL(sag1.32_silo,0)+IFNULL(sag1.10_silo,0)) AS '32_10_silo', 
SUM(IFNULL(sag1.33_silo,0)+IFNULL(sag1.11_silo,0)) AS '33_11_silo', 
SUM(IFNULL(sag1.34_silo,0)+IFNULL(sag1.12_silo,0)) AS '34_12_silo', 
SUM(IFNULL(sag1.35_silo,0)+IFNULL(sag1.13_silo,0)) AS '35_13_silo', 
SUM(IFNULL(sag1.123_silo,0)+IFNULL(sag1.121_silo,0)) AS '123_121_silo', 
SUM(IFNULL(sag1.126_silo,0)+IFNULL(sag1.124_silo,0)) AS '126_124_silo', 
SUM(IFNULL(sag1.37_silo,0)+IFNULL(sag1.15_silo,0)) AS '37_15_silo', 
SUM(IFNULL(sag1.36_silo,0)+IFNULL(sag1.14_silo,0)) AS '36_14_silo', 
SUM(IFNULL(sag1.38_silo,0)+IFNULL(sag1.16_silo,0)) AS '38_16_silo', 
SUM(IFNULL(sag1.39_silo,0)+IFNULL(sag1.17_silo,0)) AS '39_17_silo', 
SUM(IFNULL(sag1.40_silo,0)+IFNULL(sag1.18_silo,0)) AS '40_18_silo', 
SUM(IFNULL(sag1.117_silo,0)+IFNULL(sag1.115_silo,0)) AS '117_115_silo', 
SUM(IFNULL(sag1.114_silo,0)+IFNULL(sag1.112_silo,0)) AS '114_112_silo', 
SUM(IFNULL(sag1.41_silo,0)+IFNULL(sag1.19_silo,0)) AS '41_19_silo', 
SUM(IFNULL(sag1.120_silo,0)+IFNULL(sag1.118_silo,0)) AS '120_118_silo', 
SUM(IFNULL(sag1.42_silo,0)+IFNULL(sag1.20_silo,0)) AS '42_20_silo',

SUM(IFNULL(sag1.28_c_l,0)+IFNULL(sag1.6_c_l,0)) AS '28_6_c_l', 
SUM(IFNULL(sag1.30_c_l,0)+IFNULL(sag1.8_c_l,0)) AS '30_8_c_l', 
SUM(IFNULL(sag1.31_c_l,0)+IFNULL(sag1.9_c_l,0)) AS '31_9_c_l', 
SUM(IFNULL(sag1.32_c_l,0)+IFNULL(sag1.10_c_l,0)) AS '32_10_c_l', 
SUM(IFNULL(sag1.33_c_l,0)+IFNULL(sag1.11_c_l,0)) AS '33_11_c_l', 
SUM(IFNULL(sag1.34_c_l,0)+IFNULL(sag1.12_c_l,0)) AS '34_12_c_l', 
SUM(IFNULL(sag1.35_c_l,0)+IFNULL(sag1.13_c_l,0)) AS '35_13_c_l', 
SUM(IFNULL(sag1.123_c_l,0)+IFNULL(sag1.121_c_l,0)) AS '123_121_c_l', 
SUM(IFNULL(sag1.126_c_l,0)+IFNULL(sag1.124_c_l,0)) AS '126_124_c_l', 
SUM(IFNULL(sag1.37_c_l,0)+IFNULL(sag1.15_c_l,0)) AS '37_15_c_l', 
SUM(IFNULL(sag1.36_c_l,0)+IFNULL(sag1.14_c_l,0)) AS '36_14_c_l', 
SUM(IFNULL(sag1.38_c_l,0)+IFNULL(sag1.16_c_l,0)) AS '38_16_c_l', 
SUM(IFNULL(sag1.39_c_l,0)+IFNULL(sag1.17_c_l,0)) AS '39_17_c_l', 
SUM(IFNULL(sag1.40_c_l,0)+IFNULL(sag1.18_c_l,0)) AS '40_18_c_l', 
SUM(IFNULL(sag1.117_c_l,0)+IFNULL(sag1.115_c_l,0)) AS '117_115_c_l', 
SUM(IFNULL(sag1.114_c_l,0)+IFNULL(sag1.112_c_l,0)) AS '114_112_c_l', 
SUM(IFNULL(sag1.41_c_l,0)+IFNULL(sag1.19_c_l,0)) AS '41_19_c_l', 
SUM(IFNULL(sag1.120_c_l,0)+IFNULL(sag1.118_c_l,0)) AS '120_118_c_l', 
SUM(IFNULL(sag1.42_c_l,0)+IFNULL(sag1.20_c_l,0)) AS '42_20_c_l' 


FROM
(
SELECT sag.name,sag.gname,
CASE WHEN sag.dataelementid=28 AND sag.gname='Silo' THEN sag.value END AS '28_silo', 
CASE WHEN sag.dataelementid=6 AND sag.gname='Silo' THEN sag.value END AS '6_silo', 
CASE WHEN sag.dataelementid=30 AND sag.gname='Silo' THEN sag.value END AS '30_silo', 
CASE WHEN sag.dataelementid=8 AND sag.gname='Silo' THEN sag.value END AS '8_silo', 
CASE WHEN sag.dataelementid=31 AND sag.gname='Silo' THEN sag.value END AS '31_silo', 
CASE WHEN sag.dataelementid=9 AND sag.gname='Silo' THEN sag.value END AS '9_silo', 
CASE WHEN sag.dataelementid=32 AND sag.gname='Silo' THEN sag.value END AS '32_silo', 
CASE WHEN sag.dataelementid=10 AND sag.gname='Silo' THEN sag.value END AS '10_silo', 
CASE WHEN sag.dataelementid=33 AND sag.gname='Silo' THEN sag.value END AS '33_silo', 
CASE WHEN sag.dataelementid=11 AND sag.gname='Silo' THEN sag.value END AS '11_silo', 
CASE WHEN sag.dataelementid=34 AND sag.gname='Silo' THEN sag.value END AS '34_silo', 
CASE WHEN sag.dataelementid=12 AND sag.gname='Silo' THEN sag.value END AS '12_silo', 
CASE WHEN sag.dataelementid=35 AND sag.gname='Silo' THEN sag.value END AS '35_silo', 
CASE WHEN sag.dataelementid=13 AND sag.gname='Silo' THEN sag.value END AS '13_silo', 
CASE WHEN sag.dataelementid=123 AND sag.gname='Silo' THEN sag.value END AS '123_silo', 
CASE WHEN sag.dataelementid=121 AND sag.gname='Silo' THEN sag.value END AS '121_silo', 
CASE WHEN sag.dataelementid=126 AND sag.gname='Silo' THEN sag.value END AS '126_silo', 
CASE WHEN sag.dataelementid=124 AND sag.gname='Silo' THEN sag.value END AS '124_silo', 
CASE WHEN sag.dataelementid=37 AND sag.gname='Silo' THEN sag.value END AS '37_silo', 
CASE WHEN sag.dataelementid=15 AND sag.gname='Silo' THEN sag.value END AS '15_silo', 
CASE WHEN sag.dataelementid=36 AND sag.gname='Silo' THEN sag.value END AS '36_silo', 
CASE WHEN sag.dataelementid=14 AND sag.gname='Silo' THEN sag.value END AS '14_silo', 
CASE WHEN sag.dataelementid=38 AND sag.gname='Silo' THEN sag.value END AS '38_silo', 
CASE WHEN sag.dataelementid=16 AND sag.gname='Silo' THEN sag.value END AS '16_silo', 
CASE WHEN sag.dataelementid=39 AND sag.gname='Silo' THEN sag.value END AS '39_silo', 
CASE WHEN sag.dataelementid=17 AND sag.gname='Silo' THEN sag.value END AS '17_silo', 
CASE WHEN sag.dataelementid=40 AND sag.gname='Silo' THEN sag.value END AS '40_silo', 
CASE WHEN sag.dataelementid=18 AND sag.gname='Silo' THEN sag.value END AS '18_silo', 
CASE WHEN sag.dataelementid=117 AND sag.gname='Silo' THEN sag.value END AS '117_silo',
CASE WHEN sag.dataelementid=115 AND sag.gname='Silo' THEN sag.value END AS '115_silo', 
CASE WHEN sag.dataelementid=114 AND sag.gname='Silo' THEN sag.value END AS '114_silo', 
CASE WHEN sag.dataelementid=112 AND sag.gname='Silo' THEN sag.value END AS '112_silo', 
CASE WHEN sag.dataelementid=41 AND sag.gname='Silo' THEN sag.value END AS '41_silo', 
CASE WHEN sag.dataelementid=19 AND sag.gname='Silo' THEN sag.value END AS '19_silo', 
CASE WHEN sag.dataelementid=120 AND sag.gname='Silo' THEN sag.value END AS '120_silo', 
CASE WHEN sag.dataelementid=118 AND sag.gname='Silo' THEN sag.value END AS '118_silo', 
CASE WHEN sag.dataelementid=42 AND sag.gname='Silo' THEN sag.value END AS '42_silo', 
CASE WHEN sag.dataelementid=20 AND sag.gname='Silo' THEN sag.value END AS '20_silo',


CASE WHEN sag.dataelementid=28 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '28_c_l', 
CASE WHEN sag.dataelementid=6 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '6_c_l', 
CASE WHEN sag.dataelementid=30 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '30_c_l', 
CASE WHEN sag.dataelementid=8 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '8_c_l', 
CASE WHEN sag.dataelementid=31 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '31_c_l', 
CASE WHEN sag.dataelementid=9 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '9_c_l', 
CASE WHEN sag.dataelementid=32 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '32_c_l', 
CASE WHEN sag.dataelementid=10 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '10_c_l', 
CASE WHEN sag.dataelementid=33 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '33_c_l', 
CASE WHEN sag.dataelementid=11 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '11_c_l', 
CASE WHEN sag.dataelementid=34 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '34_c_l', 
CASE WHEN sag.dataelementid=12 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '12_c_l', 
CASE WHEN sag.dataelementid=35 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '35_c_l', 
CASE WHEN sag.dataelementid=13 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '13_c_l', 
CASE WHEN sag.dataelementid=123 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '123_c_l', 
CASE WHEN sag.dataelementid=121 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '121_c_l', 
CASE WHEN sag.dataelementid=126 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '126_c_l', 
CASE WHEN sag.dataelementid=124 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '124_c_l', 
CASE WHEN sag.dataelementid=37 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '37_c_l', 
CASE WHEN sag.dataelementid=15 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '15_c_l', 
CASE WHEN sag.dataelementid=36 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '36_c_l', 
CASE WHEN sag.dataelementid=14 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '14_c_l', 
CASE WHEN sag.dataelementid=38 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '38_c_l', 
CASE WHEN sag.dataelementid=16 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '16_c_l', 
CASE WHEN sag.dataelementid=39 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '39_c_l', 
CASE WHEN sag.dataelementid=17 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '17_c_l', 
CASE WHEN sag.dataelementid=40 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '40_c_l', 
CASE WHEN sag.dataelementid=18 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '18_c_l', 
CASE WHEN sag.dataelementid=117 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '117_c_l',
CASE WHEN sag.dataelementid=115 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '115_c_l', 
CASE WHEN sag.dataelementid=114 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '114_c_l', 
CASE WHEN sag.dataelementid=112 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '112_c_l', 
CASE WHEN sag.dataelementid=41 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '41_c_l', 
CASE WHEN sag.dataelementid=19 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '19_c_l', 
CASE WHEN sag.dataelementid=120 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '120_c_l', 
CASE WHEN sag.dataelementid=118 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '118_c_l', 
CASE WHEN sag.dataelementid=42 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '42_c_l', 
CASE WHEN sag.dataelementid=20 AND sag.gname IN ('CSD','LSD') THEN sag.value END AS '20_c_l'

FROM
(
SELECT asd.organisationunitid,asd.name,asd.gname,asd1.dataelementid,asd1.value
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD','Silo')
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
AND WEEK(p.startdate) = WEEK('2013-12-23')
AND YEAR(p.startdate) = YEAR('2013-12-23')
)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1

GROUP BY sag1.name