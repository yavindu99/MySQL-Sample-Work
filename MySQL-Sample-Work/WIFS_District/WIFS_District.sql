SELECT sag1.name,
SUM(IFNULL(sag1.6867_1,0)) AS '6867_1',
SUM(IFNULL(sag1.6868_1,0)) AS '6868_1',
SUM(IFNULL(sag1.6869_1,0)) AS '6869_1',
SUM(IFNULL(sag1.6870_1,0)) AS '6870_1',
SUM(IFNULL(sag1.6871_1,0)) AS '6871_1',
SUM(IFNULL(sag1.6872_1,0)) AS '6872_1',
SUM(IFNULL(sag1.6873_1,0)) AS '6873_1',
IFNULL(GROUP_CONCAT(sag1.6874_1),'') AS '6874_1',
SUM(IFNULL(sag1.6875_1,0)) AS '6875_1',
SUM(IFNULL(sag1.6876_1,0)) AS '6876_1',
IFNULL(GROUP_CONCAT(sag1.6877_1),'') AS '6877_1',
SUM(IFNULL(sag1.6878_1,0)) AS '6878_1',
IFNULL(GROUP_CONCAT(sag1.6879_1),'') AS '6879_1',
IFNULL(GROUP_CONCAT(sag1.6880_1),'') AS '6880_1',
SUM(IFNULL(sag1.6881_1,0)) AS '6881_1',
SUM(IFNULL(sag1.6882_1,0)) AS '6882_1',
SUM(IFNULL(sag1.6883_1,0)) AS '6883_1',
SUM(IFNULL(sag1.6884_1,0)) AS '6884_1',
SUM(IFNULL(sag1.6885_1,0)) AS '6885_1',
SUM(IFNULL(sag1.6886_1,0)) AS '6886_1',
SUM(IFNULL(sag1.8973_1,0)) AS '8973_1',
SUM(IFNULL(sag1.8972_1,0)) AS '8972_1',
SUM(IFNULL(sag1.6887_1,0)) AS '6887_1',
SUM(IFNULL(sag1.6888_1,0)) AS '6888_1',
SUM(IFNULL(sag1.6889_1,0)) AS '6889_1',
SUM(IFNULL(sag1.6890_1,0)) AS '6890_1',
SUM(IFNULL(sag1.6891_1,0)) AS '6891_1',
SUM(IFNULL(sag1.6892_1,0)) AS '6892_1',
SUM(IFNULL(sag1.6893_1,0)) AS '6893_1',
SUM(IFNULL(sag1.6894_1,0)) AS '6894_1',
SUM(IFNULL(sag1.6895_1,0)) AS '6895_1',
SUM(IFNULL(sag1.6896_1,0)) AS '6896_1',
SUM(IFNULL(sag1.6897_1,0)) AS '6897_1',
SUM(IFNULL(sag1.8970_1,0)) AS '8970_1',
SUM(IFNULL(sag1.6898_1,0)) AS '6898_1',
SUM(IFNULL(sag1.6901_1,0)) AS '6901_1',
SUM(IFNULL(sag1.6902_1,0)) AS '6902_1',
SUM(IFNULL(sag1.6903_1,0)) AS '6903_1',
SUM(IFNULL(sag1.6904_1,0)) AS '6904_1',
SUM(IFNULL(sag1.6905_1,0)) AS '6905_1',
SUM(IFNULL(sag1.8971_1,0)) AS '8971_1',
IFNULL(GROUP_CONCAT(sag1.8948_1),'') AS '8948_1',
SUM(IFNULL(sag1.6907_1,0)) AS '6907_1',
IFNULL(GROUP_CONCAT(sag1.6908_1),'') AS '6908_1',
SUM(IFNULL(sag1.6909_1,0)) AS '6909_1',
SUM(IFNULL(sag1.6910_1,0)) AS '6910_1',
SUM(IFNULL(sag1.6911_1,0)) AS '6911_1',
SUM(IFNULL(sag1.6912_1,0)) AS '6912_1',
SUM(IFNULL(sag1.6913_1,0)) AS '6913_1',
SUM(IFNULL(sag1.6914_1,0)) AS '6914_1',
SUM(IFNULL(sag1.6915_1,0)) AS '6915_1',
SUM(IFNULL(sag1.6916_1,0)) AS '6916_1',
SUM(IFNULL(sag1.6917_1,0)) AS '6917_1',
SUM(IFNULL(sag1.6918_1,0)) AS '6918_1',
SUM(IFNULL(sag1.6919_1,0)) AS '6919_1',
SUM(IFNULL(sag1.6920_1,0)) AS '6920_1',
SUM(IFNULL(sag1.6921_1,0)) AS '6921_1',
SUM(IFNULL(sag1.6922_1,0)) AS '6922_1',
SUM(IFNULL(sag1.6923_1,0)) AS '6923_1'

FROM
(
SELECT sag.name,sag.ou_name,
CASE WHEN sag.dataelementid=6867 THEN sag.value END AS '6867_1',
CASE WHEN sag.dataelementid=6868 THEN sag.value END AS '6868_1',
CASE WHEN sag.dataelementid=6869 THEN sag.value END AS '6869_1',
CASE WHEN sag.dataelementid=6870 THEN sag.value END AS '6870_1',
CASE WHEN sag.dataelementid=6871 THEN sag.value END AS '6871_1',
CASE WHEN sag.dataelementid=6872 THEN sag.value END AS '6872_1',
CASE WHEN sag.dataelementid=6873 THEN sag.value END AS '6873_1',
CASE WHEN sag.dataelementid=6874 THEN sag.value END AS '6874_1',
CASE WHEN sag.dataelementid=6875 THEN sag.value END AS '6875_1',
CASE WHEN sag.dataelementid=6876 THEN sag.value END AS '6876_1',
CASE WHEN sag.dataelementid=6877 THEN sag.value END AS '6877_1',
CASE WHEN sag.dataelementid=6878 THEN sag.value END AS '6878_1',
CASE WHEN sag.dataelementid=6879 THEN sag.value END AS '6879_1',
CASE WHEN sag.dataelementid=6880 THEN sag.value END AS '6880_1',
CASE WHEN sag.dataelementid=6881 THEN sag.value END AS '6881_1',
CASE WHEN sag.dataelementid=6882 THEN sag.value END AS '6882_1',
CASE WHEN sag.dataelementid=6883 THEN sag.value END AS '6883_1',
CASE WHEN sag.dataelementid=6884 THEN sag.value END AS '6884_1',
CASE WHEN sag.dataelementid=6885 THEN sag.value END AS '6885_1',
CASE WHEN sag.dataelementid=6886 THEN sag.value END AS '6886_1',
CASE WHEN sag.dataelementid=8973 THEN sag.value END AS '8973_1',
CASE WHEN sag.dataelementid=8972 THEN sag.value END AS '8972_1',
CASE WHEN sag.dataelementid=6887 THEN sag.value END AS '6887_1',
CASE WHEN sag.dataelementid=6888 THEN sag.value END AS '6888_1',
CASE WHEN sag.dataelementid=6889 THEN sag.value END AS '6889_1',
CASE WHEN sag.dataelementid=6890 THEN sag.value END AS '6890_1',
CASE WHEN sag.dataelementid=6891 THEN sag.value END AS '6891_1',
CASE WHEN sag.dataelementid=6892 THEN sag.value END AS '6892_1',
CASE WHEN sag.dataelementid=6893 THEN sag.value END AS '6893_1',
CASE WHEN sag.dataelementid=6894 THEN sag.value END AS '6894_1',
CASE WHEN sag.dataelementid=6895 THEN sag.value END AS '6895_1',
CASE WHEN sag.dataelementid=6896 THEN sag.value END AS '6896_1',
CASE WHEN sag.dataelementid=6897 THEN sag.value END AS '6897_1',
CASE WHEN sag.dataelementid=8970 THEN sag.value END AS '8970_1',
CASE WHEN sag.dataelementid=6898 THEN sag.value END AS '6898_1',
CASE WHEN sag.dataelementid=6901 THEN sag.value END AS '6901_1',
CASE WHEN sag.dataelementid=6902 THEN sag.value END AS '6902_1',
CASE WHEN sag.dataelementid=6903 THEN sag.value END AS '6903_1',
CASE WHEN sag.dataelementid=6904 THEN sag.value END AS '6904_1',
CASE WHEN sag.dataelementid=6905 THEN sag.value END AS '6905_1',
CASE WHEN sag.dataelementid=8971 THEN sag.value END AS '8971_1',
CASE WHEN sag.dataelementid=8948 THEN sag.value END AS '8948_1',
CASE WHEN sag.dataelementid=6907 THEN sag.value END AS '6907_1',
CASE WHEN sag.dataelementid=6908 THEN sag.value END AS '6908_1',
CASE WHEN sag.dataelementid=6909 THEN sag.value END AS '6909_1',
CASE WHEN sag.dataelementid=6910 THEN sag.value END AS '6910_1',
CASE WHEN sag.dataelementid=6911 THEN sag.value END AS '6911_1',
CASE WHEN sag.dataelementid=6912 THEN sag.value END AS '6912_1',
CASE WHEN sag.dataelementid=6913 THEN sag.value END AS '6913_1',
CASE WHEN sag.dataelementid=6914 THEN sag.value END AS '6914_1',
CASE WHEN sag.dataelementid=6915 THEN sag.value END AS '6915_1',
CASE WHEN sag.dataelementid=6916 THEN sag.value END AS '6916_1',
CASE WHEN sag.dataelementid=6917 THEN sag.value END AS '6917_1',
CASE WHEN sag.dataelementid=6918 THEN sag.value END AS '6918_1',
CASE WHEN sag.dataelementid=6919 THEN sag.value END AS '6919_1',
CASE WHEN sag.dataelementid=6920 THEN sag.value END AS '6920_1',
CASE WHEN sag.dataelementid=6921 THEN sag.value END AS '6921_1',
CASE WHEN sag.dataelementid=6922 THEN sag.value END AS '6922_1',
CASE WHEN sag.dataelementid=6923 THEN sag.value END AS '6923_1'

FROM
(
SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value'
FROM
(
SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
WHERE og.name IN ('Sub District Hospitals','District Hospitals','CHCs','PHCs','Sub Centres')
AND ou.name LIKE 'Ludhiana District'

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (6867,6868,6869,6870,6871,6872,6873,6874,6875,6876,6877,6878,6879,6880,
			   6881,6882,6883,6884,6885,6886,8973,8972,6887,6888,6889,6890,6891,
			   6892,6893,6894,6895,6896,6897,8970,6898,6901,6902,6903,6904,6905,8971,8948,6907,
			   6908,6909,6910,6911,6912,6913,6914,6915,6916,6917,6918,6919,6920,
			   6921,6922,6923)
AND dv.categoryoptioncomboid IN (1,10)
AND MONTH(p.startdate) = MONTH('2013-12-01')
AND YEAR(p.startdate) = YEAR('2013-12-01')
AND periodtypeid = 3

)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1

GROUP BY sag1.name