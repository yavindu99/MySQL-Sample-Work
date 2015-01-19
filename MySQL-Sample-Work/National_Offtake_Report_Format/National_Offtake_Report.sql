SELECT sag1.parentid,sag1.month,sag1.type,
#Rice
'' AS 'A) Rice',
SUM(IFNULL(sag1.30_1,0)+0.65*IFNULL(sag1.8_1,0)) AS '30_8',
SUM(IFNULL(sag1.31_1,0)+0.65*IFNULL(sag1.9_1,0)) AS '31_9',
SUM(IFNULL(sag1.32_1,0)+0.65*IFNULL(sag1.10_1,0)) AS '32_10',
SUM(IFNULL(sag1.33_1,0)+0.65*IFNULL(sag1.11_1,0)) AS '33_11',
SUM(IFNULL(sag1.34_1,0)+0.65*IFNULL(sag1.12_1,0)) AS '34_12',
SUM(IFNULL(sag1.35_1,0)+0.65*IFNULL(sag1.13_1,0)) AS '35_13',
SUM(IFNULL(sag1.123_1,0)+0.65*IFNULL(sag1.121_1,0)) AS '123_121',
SUM(IFNULL(sag1.126_1,0)+0.65*IFNULL(sag1.124_1,0)) AS '126_1124',
SUM(IFNULL(sag1.37_1,0)+0.65*IFNULL(sag1.15_1,0)) AS '37_15',
SUM(IFNULL(sag1.36_1,0)+0.65*IFNULL(sag1.14_1,0)) AS '36_14',
SUM(IFNULL(sag1.30_1,0)+0.65*IFNULL(sag1.8_1,0)+IFNULL(sag1.31_1,0)+0.65*IFNULL(sag1.9_1,0)+IFNULL(sag1.32_1,0)+0.65*IFNULL(sag1.10_1,0)+
    IFNULL(sag1.33_1,0)+0.65*IFNULL(sag1.11_1,0)+IFNULL(sag1.34_1,0)+0.65*IFNULL(sag1.12_1,0)+IFNULL(sag1.35_1,0)+0.65*IFNULL(sag1.13_1,0)+
    IFNULL(sag1.123_1,0)+0.65*IFNULL(sag1.121_1,0)+IFNULL(sag1.126_1,0)+0.65*IFNULL(sag1.124_1,0)+IFNULL(sag1.37_1,0)+0.65*IFNULL(sag1.15_1,0)+
    IFNULL(sag1.36_1,0)+0.65*IFNULL(sag1.14_1,0)) AS 'Rice_sub_total_1',

SUM(IFNULL(sag1.38_1,0)+0.65*IFNULL(sag1.16_1,0)) AS '38_16',
SUM(IFNULL(sag1.39_1,0)+0.65*IFNULL(sag1.17_1,0)) AS '39_17',
SUM(IFNULL(sag1.40_1,0)+0.65*IFNULL(sag1.18_1,0)) AS '40_18',
SUM(IFNULL(sag1.115_1,0)+0.65*IFNULL(sag1.117_1,0)) AS '115_117',
SUM(IFNULL(sag1.112_1,0)+0.65*IFNULL(sag1.114_1,0)) AS '112_114',
SUM(IFNULL(sag1.19_1,0)+0.65*IFNULL(sag1.41_1,0)) AS '19_41',
SUM(IFNULL(sag1.120_1,0)+0.65*IFNULL(sag1.118_1,0)) AS '118_120',
SUM(IFNULL(sag1.20_1,0)+0.65*IFNULL(sag1.42_1,0)) AS '20_42',
SUM(IFNULL(sag1.38_1,0)+0.65*IFNULL(sag1.16_1,0)+IFNULL(sag1.39_1,0)+0.65*IFNULL(sag1.17_1,0)+IFNULL(sag1.40_1,0)+0.65*IFNULL(sag1.18_1,0)+
    IFNULL(sag1.115_1,0)+0.65*IFNULL(sag1.117_1,0)+IFNULL(sag1.112_1,0)+0.65*IFNULL(sag1.114_1,0)+IFNULL(sag1.19_1,0)+0.65*IFNULL(sag1.41_1,0)+
    IFNULL(sag1.120_1,0)+0.65*IFNULL(sag1.118_1,0)+IFNULL(sag1.20_1,0)+0.65*IFNULL(sag1.42_1,0)) AS 'Rice_sub_total_2',

SUM(IFNULL(sag1.30_1,0)+0.65*IFNULL(sag1.8_1,0)+IFNULL(sag1.31_1,0)+0.65*IFNULL(sag1.9_1,0)+IFNULL(sag1.32_1,0)+0.65*IFNULL(sag1.10_1,0)+
    IFNULL(sag1.33_1,0)+0.65*IFNULL(sag1.11_1,0)+IFNULL(sag1.34_1,0)+0.65*IFNULL(sag1.12_1,0)+IFNULL(sag1.35_1,0)+0.65*IFNULL(sag1.13_1,0)+
    IFNULL(sag1.123_1,0)+0.65*IFNULL(sag1.121_1,0)+IFNULL(sag1.126_1,0)+0.65*IFNULL(sag1.124_1,0)+IFNULL(sag1.37_1,0)+0.65*IFNULL(sag1.15_1,0)+
    IFNULL(sag1.36_1,0)+0.65*IFNULL(sag1.14_1,0)+IFNULL(sag1.38_1,0)+0.65*IFNULL(sag1.16_1,0)+IFNULL(sag1.39_1,0)+0.65*IFNULL(sag1.17_1,0)+IFNULL(sag1.40_1,0)+0.65*IFNULL(sag1.18_1,0)+
    IFNULL(sag1.115_1,0)+0.65*IFNULL(sag1.117_1,0)+IFNULL(sag1.112_1,0)+0.65*IFNULL(sag1.114_1,0)+IFNULL(sag1.19_1,0)+0.65*IFNULL(sag1.41_1,0)+
    IFNULL(sag1.120_1,0)+0.65*IFNULL(sag1.118_1,0)+IFNULL(sag1.20_1,0)+0.65*IFNULL(sag1.42_1,0)) AS 'Rice_Full_Toatl',

'' AS  '',
'' AS 'B) Wheat',
#Wheat
SUM(IFNULL(sag1.52_1,0)) AS '52_1',
SUM(IFNULL(sag1.53_1,0)) AS '53_1',
SUM(IFNULL(sag1.54_1,0)) AS '54_1',
SUM(IFNULL(sag1.55_1,0)) AS '55_1',
SUM(IFNULL(sag1.56_1,0)) AS '56_1',
SUM(IFNULL(sag1.57_1,0)) AS '57_1',
SUM(IFNULL(sag1.122_1,0)) AS '122_1',
SUM(IFNULL(sag1.125_1,0)) AS '125_1',
SUM(IFNULL(sag1.59_1,0)) AS '59_1',
SUM(IFNULL(sag1.58_1,0)) AS '58_1',
SUM(IFNULL(sag1.52_1,0)+IFNULL(sag1.53_1,0)+IFNULL(sag1.54_1,0)+IFNULL(sag1.55_1,0)+IFNULL(sag1.56_1,0)+IFNULL(sag1.57_1,0)+IFNULL(sag1.122_1,0)+
    IFNULL(sag1.125_1,0)+IFNULL(sag1.59_1,0)+IFNULL(sag1.58_1,0)) AS 'Wheat_sub_total_1',
SUM(IFNULL(sag1.60_1,0)) AS '60_1',
SUM(IFNULL(sag1.61_1,0)) AS '61_1',
SUM(IFNULL(sag1.62_1,0)) AS '62_1',
SUM(IFNULL(sag1.116_1,0)) AS '116_1',
SUM(IFNULL(sag1.113_1,0)) AS '113_1',
SUM(IFNULL(sag1.63_1,0)) AS '63_1',
SUM(IFNULL(sag1.119_1,0)) AS '119_1',
SUM(IFNULL(sag1.64_1,0)) AS '64_1',
SUM(IFNULL(sag1.60_1,0)+IFNULL(sag1.61_1,0)+IFNULL(sag1.62_1,0)+IFNULL(sag1.116_1,0)+IFNULL(sag1.113_1,0)+IFNULL(sag1.63_1,0)+
    IFNULL(sag1.119_1,0)+IFNULL(sag1.64_1,0)) AS 'Wheat_sub_total_2',

SUM(IFNULL(sag1.52_1,0)+IFNULL(sag1.53_1,0)+IFNULL(sag1.54_1,0)+IFNULL(sag1.55_1,0)+IFNULL(sag1.56_1,0)+IFNULL(sag1.57_1,0)+IFNULL(sag1.122_1,0)+
    IFNULL(sag1.125_1,0)+IFNULL(sag1.59_1,0)+IFNULL(sag1.58_1,0)+IFNULL(sag1.60_1,0)+IFNULL(sag1.61_1,0)+IFNULL(sag1.62_1,0)+IFNULL(sag1.116_1,0)+IFNULL(sag1.113_1,0)+IFNULL(sag1.63_1,0)+
    IFNULL(sag1.119_1,0)+IFNULL(sag1.64_1,0)) AS 'Wheat_Full_Toatl',
'' AS  '',
'' AS 'C) Paddy',
#Paddy
SUM(IFNULL(sag1.16_1,0)) AS '16_1',
SUM(IFNULL(sag1.17_1,0)) AS '17_1',
SUM(IFNULL(sag1.19_1,0)) AS '19_1',
SUM(IFNULL(sag1.20_1,0)) AS '20_1',
SUM(IFNULL(sag1.16_1,0)+IFNULL(sag1.17_1,0)+IFNULL(sag1.19_1,0)+IFNULL(sag1.20_1,0)) AS 'Paddy_Full_Toatl',


#Total
'' AS  '',
'' AS 'TOTAL OFFTAKE  RICE , WHEAT & PADDY',
'' AS  '',
SUM(IFNULL(sag1.30_1,0)+IFNULL(sag1.52_1,0)) AS '30_52',
SUM(IFNULL(sag1.31_1,0)+IFNULL(sag1.53_1,0)) AS '31_53',
SUM(IFNULL(sag1.32_1,0)+IFNULL(sag1.54_1,0)) AS '32_54',
SUM(IFNULL(sag1.33_1,0)+IFNULL(sag1.55_1,0)) AS '33_55',
SUM(IFNULL(sag1.34_1,0)+IFNULL(sag1.56_1,0)) AS '34_56',
SUM(IFNULL(sag1.35_1,0)+IFNULL(sag1.57_1,0)) AS '35_57',
SUM(IFNULL(sag1.123_1,0)+IFNULL(sag1.122_1,0)) AS '123_122',
SUM(IFNULL(sag1.126_1,0)+IFNULL(sag1.124_1,0)) AS '126_1124',
SUM(IFNULL(sag1.37_1,0)+IFNULL(sag1.59_1,0)) AS '37_59',
SUM(IFNULL(sag1.36_1,0)+IFNULL(sag1.58_1,0)) AS '36_58',
SUM(IFNULL(sag1.30_1,0)+IFNULL(sag1.52_1,0)+IFNULL(sag1.31_1,0)+IFNULL(sag1.53_1,0)+IFNULL(sag1.32_1,0)+IFNULL(sag1.54_1,0)+
    IFNULL(sag1.33_1,0)+IFNULL(sag1.55_1,0)+IFNULL(sag1.34_1,0)+IFNULL(sag1.56_1,0)+IFNULL(sag1.35_1,0)+IFNULL(sag1.57_1,0)+
    IFNULL(sag1.123_1,0)+IFNULL(sag1.122_1,0)+IFNULL(sag1.126_1,0)+IFNULL(sag1.124_1,0)+IFNULL(sag1.37_1,0)+IFNULL(sag1.59_1,0)+
    IFNULL(sag1.36_1,0)+IFNULL(sag1.58_1,0)) AS 'Full_sub_total_1',
SUM(IFNULL(sag1.38_1,0)+0.65*IFNULL(sag1.16_1,0)+IFNULL(sag1.60_1,0)) AS '38_16_60',
SUM(IFNULL(sag1.39_1,0)+0.65*IFNULL(sag1.17_1,0)+IFNULL(sag1.61_1,0)) AS '39_17_61',
SUM(IFNULL(sag1.40_1,0)+IFNULL(sag1.62_1,0)) AS '40_62',
SUM(IFNULL(sag1.117_1,0)+IFNULL(sag1.116_1,0)) AS '117_116',
SUM(IFNULL(sag1.114_1,0)+IFNULL(sag1.113_1,0)) AS '114_113',
SUM(IFNULL(sag1.41_1,0)+0.65*IFNULL(sag1.19_1,0)+IFNULL(sag1.63_1,0)) AS '41_19_63',
SUM(IFNULL(sag1.120_1,0)+IFNULL(sag1.119_1,0)) AS '120_119',
SUM(IFNULL(sag1.42_1,0)+0.65*IFNULL(sag1.20_1,0)+IFNULL(sag1.64_1,0)) AS '42_20_64',
SUM(IFNULL(sag1.38_1,0)+0.65*IFNULL(sag1.16_1,0)+IFNULL(sag1.60_1,0)+IFNULL(sag1.39_1,0)+0.65*IFNULL(sag1.17_1,0)+IFNULL(sag1.61_1,0)+
    IFNULL(sag1.40_1,0)+IFNULL(sag1.62_1,0)+IFNULL(sag1.117_1,0)+IFNULL(sag1.116_1,0)+IFNULL(sag1.114_1,0)+IFNULL(sag1.113_1,0)+
    IFNULL(sag1.41_1,0)+0.65*IFNULL(sag1.19_1,0)+IFNULL(sag1.63_1,0)+IFNULL(sag1.120_1,0)+IFNULL(sag1.119_1,0)+
    IFNULL(sag1.42_1,0)+0.65*IFNULL(sag1.20_1,0)+IFNULL(sag1.64_1,0)) AS 'Full_sub_total_2',

SUM(IFNULL(sag1.30_1,0)+IFNULL(sag1.52_1,0)+IFNULL(sag1.31_1,0)+IFNULL(sag1.53_1,0)+IFNULL(sag1.32_1,0)+IFNULL(sag1.54_1,0)+
    IFNULL(sag1.33_1,0)+IFNULL(sag1.55_1,0)+IFNULL(sag1.34_1,0)+IFNULL(sag1.56_1,0)+IFNULL(sag1.35_1,0)+IFNULL(sag1.57_1,0)+
    IFNULL(sag1.123_1,0)+IFNULL(sag1.122_1,0)+IFNULL(sag1.126_1,0)+IFNULL(sag1.124_1,0)+IFNULL(sag1.37_1,0)+IFNULL(sag1.59_1,0)+
    IFNULL(sag1.36_1,0)+IFNULL(sag1.58_1,0)+IFNULL(sag1.38_1,0)+0.65*IFNULL(sag1.16_1,0)+IFNULL(sag1.60_1,0)+IFNULL(sag1.39_1,0)+0.65*IFNULL(sag1.17_1,0)+IFNULL(sag1.61_1,0)+
    IFNULL(sag1.40_1,0)+IFNULL(sag1.62_1,0)+IFNULL(sag1.117_1,0)+IFNULL(sag1.116_1,0)+IFNULL(sag1.114_1,0)+IFNULL(sag1.113_1,0)+
    IFNULL(sag1.41_1,0)+0.65*IFNULL(sag1.19_1,0)+IFNULL(sag1.63_1,0)+IFNULL(sag1.120_1,0)+IFNULL(sag1.119_1,0)+
    IFNULL(sag1.42_1,0)+0.65*IFNULL(sag1.20_1,0)+IFNULL(sag1.64_1,0)) AS 'Full_full_total'


FROM
(
SELECT sag.parentid,sag.type,sag.Month,
#Rice
CASE WHEN sag.dataelementid=30 THEN sag.value END AS '30_1',
CASE WHEN sag.dataelementid=8 THEN sag.value END AS '8_1',
CASE WHEN sag.dataelementid=31 THEN sag.value END AS '31_1',
CASE WHEN sag.dataelementid=9 THEN sag.value END AS '9_1',
CASE WHEN sag.dataelementid=32 THEN sag.value END AS '32_1',
CASE WHEN sag.dataelementid=10 THEN sag.value END AS '10_1',
CASE WHEN sag.dataelementid=33 THEN sag.value END AS '33_1',
CASE WHEN sag.dataelementid=11 THEN sag.value END AS '11_1',
CASE WHEN sag.dataelementid=34 THEN sag.value END AS '34_1',
CASE WHEN sag.dataelementid=12 THEN sag.value END AS '12_1',
CASE WHEN sag.dataelementid=35 THEN sag.value END AS '35_1',
CASE WHEN sag.dataelementid=13 THEN sag.value END AS '13_1',
CASE WHEN sag.dataelementid=123 THEN sag.value END AS '123_1',
CASE WHEN sag.dataelementid=121 THEN sag.value END AS '121_1',
CASE WHEN sag.dataelementid=126 THEN sag.value END AS '126_1',
CASE WHEN sag.dataelementid=124 THEN sag.value END AS '124_1',
CASE WHEN sag.dataelementid=37 THEN sag.value END AS '37_1',
CASE WHEN sag.dataelementid=15 THEN sag.value END AS '15_1',
CASE WHEN sag.dataelementid=36 THEN sag.value END AS '36_1',
CASE WHEN sag.dataelementid=14 THEN sag.value END AS '14_1',
CASE WHEN sag.dataelementid=38 THEN sag.value END AS '38_1',
CASE WHEN sag.dataelementid=16 THEN sag.value END AS '16_1',
CASE WHEN sag.dataelementid=39 THEN sag.value END AS '39_1',
CASE WHEN sag.dataelementid=17 THEN sag.value END AS '17_1',
CASE WHEN sag.dataelementid=40 THEN sag.value END AS '40_1',
CASE WHEN sag.dataelementid=18 THEN sag.value END AS '18_1',
CASE WHEN sag.dataelementid=117 THEN sag.value END AS '117_1',
CASE WHEN sag.dataelementid=115 THEN sag.value END AS '115_1',
CASE WHEN sag.dataelementid=114 THEN sag.value END AS '114_1',
CASE WHEN sag.dataelementid=112 THEN sag.value END AS '112_1',
CASE WHEN sag.dataelementid=41 THEN sag.value END AS '41_1',
CASE WHEN sag.dataelementid=19 THEN sag.value END AS '19_1',
CASE WHEN sag.dataelementid=120 THEN sag.value END AS '120_1',
CASE WHEN sag.dataelementid=118 THEN sag.value END AS '118_1',
CASE WHEN sag.dataelementid=42 THEN sag.value END AS '42_1',
CASE WHEN sag.dataelementid=20 THEN sag.value END AS '20_1',

#Wheat
CASE WHEN sag.dataelementid=52 THEN sag.value END AS '52_1',
CASE WHEN sag.dataelementid=53 THEN sag.value END AS '53_1',
CASE WHEN sag.dataelementid=54 THEN sag.value END AS '54_1',
CASE WHEN sag.dataelementid=55 THEN sag.value END AS '55_1',
CASE WHEN sag.dataelementid=56 THEN sag.value END AS '56_1',
CASE WHEN sag.dataelementid=57 THEN sag.value END AS '57_1',
CASE WHEN sag.dataelementid=122 THEN sag.value END AS '122_1',
CASE WHEN sag.dataelementid=125 THEN sag.value END AS '125_1',
CASE WHEN sag.dataelementid=59 THEN sag.value END AS '59_1',
CASE WHEN sag.dataelementid=58 THEN sag.value END AS '58_1',
CASE WHEN sag.dataelementid=60 THEN sag.value END AS '60_1',
CASE WHEN sag.dataelementid=61 THEN sag.value END AS '61_1',
CASE WHEN sag.dataelementid=62 THEN sag.value END AS '62_1',
CASE WHEN sag.dataelementid=116 THEN sag.value END AS '116_1',
CASE WHEN sag.dataelementid=113 THEN sag.value END AS '113_1',
CASE WHEN sag.dataelementid=63 THEN sag.value END AS '63_1',
CASE WHEN sag.dataelementid=119 THEN sag.value END AS '119_1',
CASE WHEN sag.dataelementid=64 THEN sag.value END AS '64_1'






FROM
(
SELECT asd.parentid,asd1.month,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','Monthly Total' AS 'type'
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD','Silo')
#AND ou.name LIKE 'Division Chittagong'

	
)asd

INNER JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,MONTH(p.startdate) AS 'month'
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,37,15,
			   36,14,38,16,39,17,40,18,117,115,114,112,41,19,120,118,
		           42,20,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,
			   119,64,16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
AND CASE WHEN MONTH('2013-12-01') BETWEEN 7 AND 12 THEN YEAR(p.startdate) = YEAR('2013-12-01') AND MONTH(p.startdate) BETWEEN 7 AND MONTH('2013-12-01')
         WHEN  MONTH('2013-12-01') BETWEEN 1 AND 6 THEN YEAR(p.startdate) BETWEEN YEAR('2013-12-01')-1 AND YEAR('2013-12-01') AND p.startdate BETWEEN CONCAT(YEAR('2013-12-01')-1,'-',06,'-',01) AND CONCAT('2013-12-01')
END

AND p.periodtypeid=2
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd1.dataelementid,asd.parentid,asd1.Month


###########
UNION
#########


SELECT asd.parentid,asd1.month,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','Yearly Total' AS 'type'
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD','Silo')
#AND ou.name LIKE 'Division Chittagong'

	
)asd

INNER JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,MONTH(p.startdate) AS 'month'
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,37,15,
			   36,14,38,16,39,17,40,18,117,115,114,112,41,19,120,118,
		           42,20,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,
			   119,64,16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
AND CASE WHEN MONTH('2013-12-01') BETWEEN 7 AND 12 THEN YEAR(p.startdate) = YEAR('2013-12-01') AND MONTH(p.startdate) BETWEEN 7 AND MONTH('2013-12-01')
         WHEN  MONTH('2013-12-01') BETWEEN 1 AND 6 THEN YEAR(p.startdate) BETWEEN YEAR('2013-12-01')-1 AND YEAR('2013-12-01') AND p.startdate BETWEEN CONCAT(YEAR('2013-12-01')-1,'-',06,'-',01) AND CONCAT('2013-12-01')
END

AND p.periodtypeid=2
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd1.dataelementid,asd.parentid


###########
UNION
#########

SELECT asd.parentid,asd1.month,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','Weekly Total' AS 'type'
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD','Silo')
#And ou.name like 'Division Chittagong'

	
)asd

INNER JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,MONTH(p.startdate) AS 'month'
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,37,15,
			   36,14,38,16,39,17,40,18,117,115,114,112,41,19,120,118,
		           42,20,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,
			   119,64,16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
#AND WEEK(p.startdate)=WEEK('2013-12-23')
#AND MONTH(p.startdate)=MONTH('2013-12-23')
#AND YEAR(p.startdate) = MONTH('2013-12-23')
AND p.startdate BETWEEN '2013-12-01' AND '2013-12-28' 

AND p.periodtypeid=2
)asd1

ON asd.organisationunitid = asd1.sourceid
GROUP BY asd1.dataelementid



)sag
)sag1
GROUP BY sag1.type,sag1.Month
ORDER BY sag1.type,sag1.Month