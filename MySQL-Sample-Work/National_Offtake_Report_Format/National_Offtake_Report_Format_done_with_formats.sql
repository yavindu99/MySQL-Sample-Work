SELECT 
CASE WHEN sag2.month=1 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')+1
     WHEN sag2.month=2 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')+1
     WHEN sag2.month=3 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')+1
     WHEN sag2.month=4 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')+1
     WHEN sag2.month=5 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')+1
     WHEN sag2.month=6 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')+1
     
     WHEN sag2.month=7 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')
     WHEN sag2.month=8 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')
     WHEN sag2.month=9 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')
     WHEN sag2.month=10 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')
     WHEN sag2.month=11 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')
     WHEN sag2.month=12 AND MONTH('2013-07-15') BETWEEN 7 AND 12 THEN   YEAR('2013-07-15')
     
     WHEN sag2.month=1 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')
     WHEN sag2.month=2 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')
     WHEN sag2.month=3 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')
     WHEN sag2.month=4 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')
     WHEN sag2.month=5 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')
     WHEN sag2.month=6 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')
     
     WHEN sag2.month=7 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')-1
     WHEN sag2.month=8 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')-1
     WHEN sag2.month=9 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')-1
     WHEN sag2.month=10 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')-1
     WHEN sag2.month=11 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')-1
     WHEN sag2.month=12 AND MONTH('2013-07-15') BETWEEN 1 AND 6 THEN   YEAR('2013-07-15')-1
     
     WHEN sag2.month='Year' THEN  'Year'
     END AS 'year',
     sag2.month,sag2.type,
#Rice
 '' AS 'A Rice',
 ROUND(SUM(sag2.30_1),2) AS '30_1',
 ROUND(SUM(sag2.31_1),2) AS '31_1',
 ROUND(SUM(sag2.32_1),2) AS '32_1',
 ROUND(SUM(sag2.33_1),2) AS '33_1',
 ROUND(SUM(sag2.34_1),2) AS '34_1',
 ROUND(SUM(sag2.35_1),2) AS '35_1',
 ROUND(SUM(sag2.123_1),2) AS '123_1',
 ROUND(SUM(sag2.126_1),2) AS '126_1',
 ROUND(SUM(sag2.37_1),2) AS '37_1',
 ROUND(SUM(sag2.36_1),2) AS '36_1',
 ROUND(SUM(sag2.Rice_sub_total_1),2) AS 'Rice_sub_total_1',
 
 ROUND(SUM(sag2.38_1),2) AS '38_1',
 ROUND(SUM(sag2.39_1),2) AS '39_1',
 ROUND(SUM(sag2.40_1),2) AS '40_1',
 ROUND(SUM(sag2.117_1),2) AS '117_1',
 ROUND(SUM(sag2.114_1),2) AS '114_1',
 ROUND(SUM(sag2.41_1),2) AS '41_1',
 ROUND(SUM(sag2.120_1),2) AS '120_1',
 ROUND(SUM(sag2.42_1),2) AS '42_1',
 ROUND(SUM(sag2.Rice_sub_total_2),2) AS 'Rice_sub_total_2',
 
 ROUND(SUM(sag2.Rice_Full_Toatl) ,2) AS 'Rice_Full_Toatl',
 
'' AS '',
'' AS 'B Wheat',
#Wheat 
 ROUND(SUM(sag2.52_1),2) AS '52_1',
 ROUND(SUM(sag2.53_1),2) AS '53_1',
 ROUND(SUM(sag2.54_1),2) AS '54_1',
 ROUND(SUM(sag2.55_1),2) AS '55_1',
 ROUND(SUM(sag2.56_1),2) AS '56_1',
 ROUND(SUM(sag2.57_1),2) AS '57_1',
 ROUND(SUM(sag2.122_1),2) AS '122_1',
 ROUND(SUM(sag2.125_1),2) AS '125_1',
 ROUND(SUM(sag2.59_1),2) AS '59_1',
 ROUND(SUM(sag2.58_1),2) AS '58_1',
 ROUND(SUM(sag2.Wheat_sub_total_1),2) AS 'Wheat_sub_total_1',
 ROUND(SUM(sag2.60_1),2) AS '60_1',
 ROUND(SUM(sag2.61_1),2) AS '61_1',
 ROUND(SUM(sag2.62_1),2) AS '62_1',
 ROUND(SUM(sag2.116_1),2) AS '116_1',
 ROUND(SUM(sag2.113_1),2) AS '113_1',
 ROUND(SUM(sag2.63_1),2) AS '63_1',
 ROUND(SUM(sag2.119_1),2) AS '119_1',
 ROUND(SUM(sag2.64_1),2) AS '64_1',
 ROUND(SUM(sag2.Wheat_sub_total_2),2) AS 'Wheat_sub_total_2',
 ROUND(SUM(sag2.Wheat_Full_Toatl),2) AS 'Wheat_Full_Toatl',
'' AS '',
'' AS 'C Paddy',
#Paddy
 ROUND(SUM(sag2.16_1),2) AS '16_1',
 ROUND(SUM(sag2.17_1),2) AS '17_1',
 ROUND(SUM(sag2.19_1),2) AS '19_1',
 ROUND(SUM(sag2.20_1),2) AS '20_1',
 ROUND(SUM(sag2.Paddy_Full_Toatl),2) AS 'Paddy_Full_Toatl',
 
 
#Total
'' AS '',
'' AS 'TOTAL OFFTAKE  RICE , WHEAT & PADDY',
'' AS '',
 ROUND(SUM(sag2.30_52),2) AS '30_52',
 ROUND(SUM(sag2.31_53),2) AS '31_53',
 ROUND(SUM(sag2.32_54),2) AS '32_54',
 ROUND(SUM(sag2.33_55),2) AS '33_55',
 ROUND(SUM(sag2.34_56),2) AS '34_56',
 ROUND(SUM(sag2.35_57),2) AS '35_57',
 ROUND(SUM(sag2.123_122),2) AS '123_122',
 #ROUND(SUM(sag2.126_124),2) AS '126_124',
 ROUND(SUM(sag2.37_59),2) AS '37_59',
 ROUND(SUM(sag2.36_58),2) AS '36_58',
 ROUND(SUM(sag2.Full_sub_total_1),2) AS 'Full_sub_total_1',
 ROUND(SUM(sag2.38_16_60),2) AS '38_16_60',
 ROUND(SUM(sag2.39_17_61),2) AS '39_17_61',
 ROUND(SUM(sag2.40_62),2) AS '40_62',
 ROUND(SUM(sag2.117_116),2) AS '117_116',
 ROUND(SUM(sag2.114_113),2) AS '114_113',
 ROUND(SUM(sag2.41_19_63),2) AS '41_19_63',
 ROUND(SUM(sag2.120_119),2) AS '120_119',
 ROUND(SUM(sag2.42_20_64),2) AS '42_20_64',
 ROUND(SUM(sag2.Full_sub_total_2),2) AS 'Full_sub_total_2',
 ROUND(SUM(sag2.Full_full_total),2) AS 'Full_full_total'

FROM
(
SELECT o1.month,o2.type,
'' AS 'A) Rice',
0 AS '30_1',
0 AS '31_1',
0 AS '32_1',
0 AS '33_1',
0 AS '34_1',
0 AS '35_1',
0 AS '123_1',
0 AS '126_1',
0 AS '37_1',
0 AS '36_1',
0 AS 'Rice_sub_total_1',
0 AS '38_1',
0 AS '39_1',
0 AS '40_1',
0 AS '117_1',
0 AS '114_1',
0 AS '41_1',
0 AS '120_1',
0 AS '42_1',
0 AS 'Rice_sub_total_2',
0 AS 'Rice_Full_Toatl',

#'' AS  '',
'' AS 'B) Wheat',

0 AS '52_1',
0 AS '53_1',
0 AS '54_1',
0 AS '55_1',
0 AS '56_1',
0 AS '57_1',
0 AS '122_1',
0 AS '125_1',
0 AS '59_1',
0 AS '58_1',
0 AS 'Wheat_sub_total_1',
0 AS '60_1',
0 AS '61_1',
0 AS '62_1',
0 AS '116_1',
0 AS '113_1',
0 AS '63_1',
0 AS '119_1',
0 AS '64_1',
0 AS 'Wheat_sub_total_2',
0 AS 'Wheat_Full_Toatl',

#'' AS  '',
'' AS 'C) Paddy',

0 AS '16_1',
0 AS '17_1',
0 AS '19_1',
0 AS '20_1',
0 AS 'Paddy_Full_Toatl',

#'' AS  '',
'' AS 'TOTAL OFFTAKE  RICE , WHEAT & PADDY',
#'' AS  '',

0 AS '30_52',
0 AS '31_53',
0 AS '32_54',
0 AS '33_55',
0 AS '34_56',
0 AS '35_57',
0 AS '123_122',

0 AS '37_59',
0 AS '36_58',
0 AS 'Full_sub_total_1',
0 AS '38_16_60',
0 AS '39_17_61',
0 AS '40_62',
0 AS '117_116',
0 AS '114_113',
0 AS '41_19_63',
0 AS '120_119',
0 AS '42_20_64',
0 AS 'Full_sub_total_2',
0 AS 'Full_full_total'


FROM
(
SELECT ou.organisationunitid,
CASE WHEN ou.organisationunitid=1 THEN CONCAT('0',7,' ','July')
     #WHEN ou.organisationunitid=2 THEN 'jk'
     
     WHEN ou.organisationunitid=3 THEN  CONCAT('0',8,' ','August')
     #WHEN ou.organisationunitid=4 THEN 8
     
     WHEN ou.organisationunitid=5 THEN  CONCAT('0',9,' ','September')
     #WHEN ou.organisationunitid=6 THEN 9
     
     WHEN ou.organisationunitid=7 THEN CONCAT(10,' ','October')
     #WHEN ou.organisationunitid=8 THEN 10
     
     WHEN ou.organisationunitid=10 THEN  CONCAT(11,' ','November')
     #WHEN ou.organisationunitid=11 THEN 11
     
     WHEN ou.organisationunitid=12 THEN CONCAT(12,' ','December')
     #WHEN ou.organisationunitid=13 THEN 12
     
     WHEN ou.organisationunitid=14 THEN CONCAT('0',1,' ','January')
     #WHEN ou.organisationunitid=15 THEN 1
     
     WHEN ou.organisationunitid=16 THEN  CONCAT('0',2,' ','February')
     #WHEN ou.organisationunitid=17 THEN 2
     
     WHEN ou.organisationunitid=18 THEN  CONCAT('0',3,' ','March')
     #WHEN ou.organisationunitid=19 THEN 3
     
     WHEN ou.organisationunitid=20 THEN  CONCAT('0',4,' ','April')
     #WHEN ou.organisationunitid=21 THEN 4
     
     WHEN ou.organisationunitid=22 THEN  CONCAT('0',5,' ','May')
     #WHEN ou.organisationunitid=23 THEN 5
     
     WHEN ou.organisationunitid=24 THEN  CONCAT('0',6,' ','June')
     #WHEN ou.organisationunitid=25 THEN 6
     
     WHEN ou.organisationunitid=25 THEN 'Year'
     END AS 'month'

FROM organisationunit ou
)o1

INNER JOIN 

(
SELECT ou.organisationunitid,
CASE WHEN ou.organisationunitid=1 THEN 'CUM'
     #WHEN ou.organisationunitid=2 THEN ' '
     
     WHEN ou.organisationunitid=3 THEN 'CUM'
     #WHEN ou.organisationunitid=4 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=5 THEN 'CUM'
     #WHEN ou.organisationunitid=6 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=7 THEN 'CUM'
     #WHEN ou.organisationunitid=8 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=10 THEN 'CUM'
     #WHEN ou.organisationunitid=11 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=12 THEN 'CUM'
     #WHEN ou.organisationunitid=13 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=14 THEN 'CUM'
     #WHEN ou.organisationunitid=15 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=16 THEN 'CUM'
     #WHEN ou.organisationunitid=17 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=18 THEN 'CUM'
     #WHEN ou.organisationunitid=19 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=20 THEN 'CUM'
     #WHEN ou.organisationunitid=21 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=22 THEN 'CUM'
     #WHEN ou.organisationunitid=23 THEN 'Yearly Total'
     
     WHEN ou.organisationunitid=24 THEN 'CUM'
     
     WHEN ou.organisationunitid=25 THEN 'Yearly Total'
     
     END AS 'type'
     
     
FROM organisationunit ou
)o2

ON o2.organisationunitid=o1.organisationunitid
#WHERE o1.month IS NOT NULL
#Order by o1.month,o2.type

UNION


SELECT sag1.month,sag1.type,
#Rice
'' AS 'A) Rice',
SUM(IFNULL(sag1.30_1,0)) AS '30_1',
SUM(IFNULL(sag1.31_1,0)) AS '31_1',
SUM(IFNULL(sag1.32_1,0)) AS '32_1',
SUM(IFNULL(sag1.33_1,0)) AS '33_1',
SUM(IFNULL(sag1.34_1,0)) AS '34_1',
SUM(IFNULL(sag1.35_1,0)) AS '35_1',
SUM(IFNULL(sag1.123_1,0)) AS '123_1',
SUM(IFNULL(sag1.126_1,0)) AS '126_1',
SUM(IFNULL(sag1.37_1,0)) AS '37_1',
SUM(IFNULL(sag1.36_1,0)) AS '36_1',
SUM(IFNULL(sag1.30_1,0)+IFNULL(sag1.31_1,0)+IFNULL(sag1.32_1,0)+IFNULL(sag1.33_1,0)+IFNULL(sag1.34_1,0)+IFNULL(sag1.35_1,0)+
    IFNULL(sag1.123_1,0)+IFNULL(sag1.126_1,0)+IFNULL(sag1.37_1,0)+IFNULL(sag1.36_1,0)) AS 'Rice_sub_total_1',

SUM(IFNULL(sag1.38_1,0)) AS '38_1',
SUM(IFNULL(sag1.39_1,0)) AS '39_1',
SUM(IFNULL(sag1.40_1,0)) AS '40_1',
SUM(IFNULL(sag1.117_1,0)) AS '117_1',
SUM(IFNULL(sag1.114_1,0)) AS '114_1',
SUM(IFNULL(sag1.41_1,0)) AS '41_1',
SUM(IFNULL(sag1.120_1,0)) AS '120_1',
SUM(IFNULL(sag1.42_1,0)) AS '42_1',
SUM(IFNULL(sag1.38_1,0)+IFNULL(sag1.39_1,0)+IFNULL(sag1.40_1,0)+IFNULL(sag1.117_1,0)+IFNULL(sag1.114_1,0)+IFNULL(sag1.41_1,0)+
    IFNULL(sag1.120_1,0)+IFNULL(sag1.42_1,0)) AS 'Rice_sub_total_2',

SUM(IFNULL(sag1.30_1,0)+IFNULL(sag1.31_1,0)+IFNULL(sag1.32_1,0)+IFNULL(sag1.33_1,0)+IFNULL(sag1.34_1,0)+IFNULL(sag1.35_1,0)+
    IFNULL(sag1.123_1,0)+IFNULL(sag1.126_1,0)+IFNULL(sag1.37_1,0)+IFNULL(sag1.36_1,0)+IFNULL(sag1.38_1,0)+IFNULL(sag1.39_1,0)+IFNULL(sag1.40_1,0)+IFNULL(sag1.117_1,0)+IFNULL(sag1.114_1,0)+IFNULL(sag1.41_1,0)+
    IFNULL(sag1.120_1,0)+IFNULL(sag1.42_1,0)) AS 'Rice_Full_Toatl',

#'' AS  '',
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
#'' AS  '',
'' AS 'C) Paddy',
#Paddy
SUM(IFNULL(sag1.16_1,0)) AS '16_1',
SUM(IFNULL(sag1.17_1,0)) AS '17_1',
SUM(IFNULL(sag1.19_1,0)) AS '19_1',
SUM(IFNULL(sag1.20_1,0)) AS '20_1',
SUM(IFNULL(sag1.16_1,0)+IFNULL(sag1.17_1,0)+IFNULL(sag1.19_1,0)+IFNULL(sag1.20_1,0)) AS 'Paddy_Full_Toatl',


#Total
#'' AS  '',
'' AS 'TOTAL OFFTAKE  RICE , WHEAT & PADDY',
#'' AS  '',
SUM(IFNULL(sag1.30_1,0)+IFNULL(sag1.52_1,0)) AS '30_52',
SUM(IFNULL(sag1.31_1,0)+IFNULL(sag1.53_1,0)) AS '31_53',
SUM(IFNULL(sag1.32_1,0)+IFNULL(sag1.54_1,0)) AS '32_54',
SUM(IFNULL(sag1.33_1,0)+IFNULL(sag1.55_1,0)) AS '33_55',
SUM(IFNULL(sag1.34_1,0)+IFNULL(sag1.56_1,0)) AS '34_56',
SUM(IFNULL(sag1.35_1,0)+IFNULL(sag1.57_1,0)) AS '35_57',
SUM(IFNULL(sag1.123_1,0)+IFNULL(sag1.122_1,0)) AS '123_122',

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
SELECT sag.parentid,sag.type,sag.year,sag.Month,
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
SELECT asd.parentid,asd1.year,asd1.month,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','CUM' AS 'type'
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD','Silo','District')
#AND ou.name LIKE 'Division Chittagong'

	
)asd

LEFT JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,CONCAT(CASE WHEN MONTH(p.startdate) IN (1,2,3,4,5,6,7,8,9) THEN '0'
                                                          WHEN MONTH(p.startdate) IN (10,11,12) THEN '' END,MONTH(p.startdate),' ',DATE_FORMAT(p.startdate,'%M')) AS 'month',YEAR(p.startdate) AS 'year'
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,37,15,
			   36,14,38,16,39,17,40,18,117,115,114,112,41,19,120,118,
		           42,20,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,
			   119,64,16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
AND CASE WHEN MONTH('2013-07-15') BETWEEN 7 AND 12 THEN YEAR(p.startdate) = YEAR('2013-07-15') AND MONTH(p.startdate) BETWEEN 7 AND MONTH('2013-07-15')
         WHEN  MONTH('2013-07-15') BETWEEN 1 AND 6 THEN YEAR(p.startdate) BETWEEN YEAR('2013-07-15')-1 AND YEAR('2013-07-15') AND p.startdate BETWEEN CONCAT(YEAR('2013-07-15')-1,'-',06,'-',01) AND CONCAT('2013-07-15')
END

AND p.periodtypeid=2
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd1.dataelementid,asd.parentid,asd1.Month


###########
UNION
#########


SELECT asd.parentid,asd1.year,asd1.month,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','Yearly Total' AS 'type'
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD','Silo','District')
#AND ou.name LIKE 'Division Chittagong'

	
)asd

LEFT JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,'Year' AS 'month','Year' AS 'year'
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,37,15,
			   36,14,38,16,39,17,40,18,117,115,114,112,41,19,120,118,
		           42,20,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,
			   119,64,16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
AND CASE WHEN MONTH('2013-07-15') BETWEEN 7 AND 12 THEN YEAR(p.startdate) = YEAR('2013-07-15') AND MONTH(p.startdate) BETWEEN 7 AND MONTH('2013-07-15')
         WHEN  MONTH('2013-07-15') BETWEEN 1 AND 6 THEN YEAR(p.startdate) BETWEEN YEAR('2013-07-15')-1 AND YEAR('2013-07-15') AND p.startdate BETWEEN CONCAT(YEAR('2013-07-15')-1,'-',06,'-',01) AND CONCAT('2013-07-15')
END

AND p.periodtypeid=2
)asd1
ON asd.organisationunitid = asd1.sourceid
GROUP BY asd1.dataelementid,asd.parentid


###########
UNION
#########

SELECT asd.parentid,asd.year,asd.month,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','Current Week' AS 'type'
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level,ou.parentid,CONCAT(CASE WHEN MONTH('2013-07-15') IN (1,2,3,4,5,6,7,8,9) THEN '0'
													        WHEN MONTH('2013-07-15') IN (10,11,12) THEN '' END,MONTH('2013-07-15'),' ',DATE_FORMAT('2013-07-15','%M')) AS 'month',YEAR('2013-07-15') AS 'year'
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD','Silo','District')
#And ou.name like 'Division Chittagong'

	
)asd

LEFT JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,MONTH(p.startdate)
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,37,15,
			   36,14,38,16,39,17,40,18,117,115,114,112,41,19,120,118,
		           42,20,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,
			   119,64,16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
#AND WEEK(p.startdate)=WEEK('2013-07-15')
#AND MONTH(p.startdate)=MONTH('2013-07-15')
#AND YEAR(p.startdate) = MONTH('2013-07-15')
AND p.startdate BETWEEN '2013-07-15' AND '2013-07-21' 

AND p.periodtypeid=2
)asd1

ON asd.organisationunitid = asd1.sourceid
GROUP BY asd1.dataelementid



)sag
)sag1
#WHERE sag1.month IS NOT NULL
GROUP BY sag1.type,sag1.month

#ORDER BY sag1.type,sag1.month
)sag2
WHERE sag2.month IS NOT NULL
GROUP BY YEAR,sag2.type,sag2.month
ORDER BY YEAR,sag2.month,sag2.type

