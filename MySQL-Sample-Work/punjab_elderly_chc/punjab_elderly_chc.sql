SELECT sag1.organisationunitid,sag1.name,
SUM(IFNULL(sag1.6924,0)) AS '6924',
SUM(IFNULL(sag1.6926,0)) AS '6926',
SUM(IFNULL(sag1.6958,0)) AS '6958',
SUM(IFNULL(sag1.6960,0)) AS '6960',
SUM(IFNULL(sag1.6962,0)) AS '6962',
SUM(IFNULL(sag1.6964,0)) AS '6964',
SUM(IFNULL(sag1.6966,0)) AS '6966',
SUM(IFNULL(sag1.6968,0)) AS '6968',
SUM(IFNULL(sag1.6936,0)) AS '6936',
SUM(IFNULL(sag1.6928,0)) AS '6928',
SUM(IFNULL(sag1.6940,0)) AS '6940',
SUM(IFNULL(sag1.6930,0)) AS '6930',
SUM(IFNULL(sag1.6942,0)) AS '6942',
SUM(IFNULL(sag1.6944,0)) AS '6944',
SUM(IFNULL(sag1.6946,0)) AS '6946',
SUM(IFNULL(sag1.7071,0)) AS '7071',
SUM(IFNULL(sag1.6970,0)) AS '6970',
SUM(IFNULL(sag1.6972,0)) AS '6972',
SUM(IFNULL(sag1.6974,0)) AS '6974',
SUM(IFNULL(sag1.6971,0)) AS '6971',
SUM(IFNULL(sag1.6973,0)) AS '6973',
SUM(IFNULL(sag1.6975,0)) AS '6975',
SUM(IFNULL(sag1.7072,0)) AS '7072',
SUM(IFNULL(sag1.6943,0)) AS '6943',
SUM(IFNULL(sag1.6945,0)) AS '6945',
SUM(IFNULL(sag1.6947,0)) AS '6947',
SUM(IFNULL(sag1.6925,0)) AS '6925',
SUM(IFNULL(sag1.6927,0)) AS '6927',
SUM(IFNULL(sag1.6959,0)) AS '6959',
SUM(IFNULL(sag1.6961,0)) AS '6961',
SUM(IFNULL(sag1.6963,0)) AS '6963',
SUM(IFNULL(sag1.6965,0)) AS '6965',
SUM(IFNULL(sag1.6967,0)) AS '6967',
SUM(IFNULL(sag1.6969,0)) AS '6969',
SUM(IFNULL(sag1.6937,0)) AS '6937',
SUM(IFNULL(sag1.6929,0)) AS '6929',
SUM(IFNULL(sag1.6941,0)) AS '6941',
SUM(IFNULL(sag1.6931,0)) AS '6931',
SUM(IFNULL(sag1.6952,0)) AS '6952',
SUM(IFNULL(sag1.6953,0)) AS '6953',
SUM(IFNULL(sag1.6954,0)) AS '6954',
SUM(IFNULL(sag1.6955,0)) AS '6955',
SUM(IFNULL(sag1.6976,0)) AS '6976'

FROM
(
SELECT sag.organisationunitid,sag.name,
CASE WHEN sag.dataelementid =6924 THEN sag.value END AS '6924',
CASE WHEN sag.dataelementid =6926 THEN sag.value END AS '6926',
CASE WHEN sag.dataelementid =6958 THEN sag.value END AS '6958',
CASE WHEN sag.dataelementid =6960 THEN sag.value END AS '6960',
CASE WHEN sag.dataelementid =6962 THEN sag.value END AS '6962',
CASE WHEN sag.dataelementid =6964 THEN sag.value END AS '6964',
CASE WHEN sag.dataelementid =6966 THEN sag.value END AS '6966',
CASE WHEN sag.dataelementid =6968 THEN sag.value END AS '6968',
CASE WHEN sag.dataelementid =6936 THEN sag.value END AS '6936',
CASE WHEN sag.dataelementid =6928 THEN sag.value END AS '6928',
CASE WHEN sag.dataelementid =6940 THEN sag.value END AS '6940',
CASE WHEN sag.dataelementid =6930 THEN sag.value END AS '6930',
CASE WHEN sag.dataelementid =6942 THEN sag.value END AS '6942',
CASE WHEN sag.dataelementid =6944 THEN sag.value END AS '6944',
CASE WHEN sag.dataelementid =6946 THEN sag.value END AS '6946',
CASE WHEN sag.dataelementid =7071 THEN sag.value END AS '7071',
CASE WHEN sag.dataelementid =6970 THEN sag.value END AS '6970',
CASE WHEN sag.dataelementid =6972 THEN sag.value END AS '6972',
CASE WHEN sag.dataelementid =6974 THEN sag.value END AS '6974',
CASE WHEN sag.dataelementid =6971 THEN sag.value END AS '6971',
CASE WHEN sag.dataelementid =6973 THEN sag.value END AS '6973',
CASE WHEN sag.dataelementid =6975 THEN sag.value END AS '6975',
CASE WHEN sag.dataelementid =7072 THEN sag.value END AS '7072',
CASE WHEN sag.dataelementid =6943 THEN sag.value END AS '6943',
CASE WHEN sag.dataelementid =6945 THEN sag.value END AS '6945',
CASE WHEN sag.dataelementid =6947 THEN sag.value END AS '6947',
CASE WHEN sag.dataelementid =6925 THEN sag.value END AS '6925',
CASE WHEN sag.dataelementid =6927 THEN sag.value END AS '6927',
CASE WHEN sag.dataelementid =6959 THEN sag.value END AS '6959',
CASE WHEN sag.dataelementid =6961 THEN sag.value END AS '6961',
CASE WHEN sag.dataelementid =6963 THEN sag.value END AS '6963',
CASE WHEN sag.dataelementid =6965 THEN sag.value END AS '6965',
CASE WHEN sag.dataelementid =6967 THEN sag.value END AS '6967',
CASE WHEN sag.dataelementid =6969 THEN sag.value END AS '6969',
CASE WHEN sag.dataelementid =6937 THEN sag.value END AS '6937',
CASE WHEN sag.dataelementid =6929 THEN sag.value END AS '6929',
CASE WHEN sag.dataelementid =6941 THEN sag.value END AS '6941',
CASE WHEN sag.dataelementid =6931 THEN sag.value END AS '6931',
CASE WHEN sag.dataelementid =6952 THEN sag.value END AS '6952',
CASE WHEN sag.dataelementid =6953 THEN sag.value END AS '6953',
CASE WHEN sag.dataelementid =6954 THEN sag.value END AS '6954',
CASE WHEN sag.dataelementid =6955 THEN sag.value END AS '6955',
CASE WHEN sag.dataelementid =6976 THEN sag.value END AS '6976'


FROM
(
SELECT asd.organisationunitid, asd.name,asd1.dataelementid,asd1.value
FROM
(
SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.organisationunitid
WHERE og.name IN ('CHCs')
AND ou.name LIKE 'Bhadaur CHC'

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (6924,6926,6958,6960,6962,6964,6966,6968,6936,6928,6940,6930,6942,6944,6946,7071,6970,6972,6974,6971,6973,6975,7072,6943,6945,6947,6925,6927,6959,6961,6963,6965,6967,6969,6937,6929,6941,6931,6952,6953,6954,6955,6976)
AND dv.categoryoptioncomboid IN (1)
AND p.startdate BETWEEN '2013-08-01' AND '2013-08-31'
AND periodtypeid = 3
ORDER BY dv.sourceid,dv.dataelementid
)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1
GROUP BY sag1.organisationunitid
