SELECT sag1.ou_name,
SUM(IFNULL(sag1.8936_1,0)) AS '8936_1',
SUM(IFNULL(sag1.6061_7,0)) AS '6061_7',
SUM(IFNULL(sag1.6061_8,0)) AS '6061_8',
SUM(IFNULL(sag1.7769_7,0)) AS '7769_7',
SUM(IFNULL(sag1.7769_8,0)) AS '7769_8',
SUM(IFNULL(sag1.6062_7,0)) AS '6062_7',
SUM(IFNULL(sag1.6062_8,0)) AS '6062_8',
SUM(IFNULL(sag1.7770_7,0)) AS '7770_7',
SUM(IFNULL(sag1.7770_8,0)) AS '7770_8',
SUM(IFNULL(sag1.6063_7,0)) AS '6063_7',
SUM(IFNULL(sag1.6063_8,0)) AS '6063_8',
SUM(IFNULL(sag1.7771_7,0)) AS '7771_7',
SUM(IFNULL(sag1.7771_8,0)) AS '7771_8',

SUM(IFNULL(sag1.125_1,0)) AS '125_1',
SUM(IFNULL(sag1.126_1,0)) AS '126_1',
SUM(IFNULL(sag1.123_1,0)) AS '123_1',
SUM(IFNULL(sag1.124_1,0)) AS '124_1',
SUM(IFNULL(sag1.6064_7,0)) AS '6064_7',
SUM(IFNULL(sag1.6064_8,0)) AS '6064_8',
SUM(IFNULL(sag1.7772_7,0)) AS '7772_7',
SUM(IFNULL(sag1.7772_8,0)) AS '7772_8',
SUM(IFNULL(sag1.6066_7,0)) AS '6066_7',
SUM(IFNULL(sag1.6066_8,0)) AS '6066_8',
SUM(IFNULL(sag1.7774_7,0)) AS '7774_7',
SUM(IFNULL(sag1.7774_8,0)) AS '7774_8',

SUM(IFNULL(sag1.7087_1,0)) AS '7087_1',
SUM(IFNULL(sag1.7088_1,0)) AS '7088_1',
SUM(IFNULL(sag1.7081_1,0)) AS '7081_1',
SUM(IFNULL(sag1.7082_1,0)) AS '7082_1',
SUM(IFNULL(sag1.7084_1,0)) AS '7084_1',
SUM(IFNULL(sag1.7085_1,0)) AS '7085_1',
SUM(IFNULL(sag1.7080_1,0)) AS '7080_1',
SUM(IFNULL(sag1.7083_1,0)) AS '7083_1',
SUM(IFNULL(sag1.7086_1,0)) AS '7086_1',
SUM(IFNULL(sag1.7073_1,0)) AS '7073_1',
SUM(IFNULL(sag1.7074_1,0)) AS '7074_1',
SUM(IFNULL(sag1.7075_1,0)) AS '7075_1',
SUM(IFNULL(sag1.7775_7,0)) AS '7775_7',
SUM(IFNULL(sag1.7775_8,0)) AS '7775_8',
SUM(IFNULL(sag1.8961_7,0)) AS '8961_7',
SUM(IFNULL(sag1.8961_8,0)) AS '8961_8',
SUM(IFNULL(sag1.7776_7,0)) AS '7776_7',
SUM(IFNULL(sag1.7776_8,0)) AS '7776_8',
SUM(IFNULL(sag1.8962_7,0)) AS '8962_7',
SUM(IFNULL(sag1.8962_8,0)) AS '8962_8',

SUM(IFNULL(sag1.128_7,0)) AS '128_7',
SUM(IFNULL(sag1.128_8,0)) AS '128_8',
SUM(IFNULL(sag1.7777_7,0)) AS '7777_7',
SUM(IFNULL(sag1.7777_8,0)) AS '7777_8',
SUM(IFNULL(sag1.6067_1,0)) AS '6067_1',
SUM(IFNULL(sag1.1254_1,0)) AS '1254_1',
SUM(IFNULL(sag1.1253_1,0)) AS '1253_1',
SUM(IFNULL(sag1.1257_1,0)) AS '1257_1',
SUM(IFNULL(sag1.1256_1,0)) AS '1256_1',
SUM(IFNULL(sag1.6068_1,0)) AS '6068_1',
SUM(IFNULL(sag1.6069_1,0)) AS '6069_1',
SUM(IFNULL(sag1.6070_1,0)) AS '6070_1',
SUM(IFNULL(sag1.6071_1,0)) AS '6071_1',
SUM(IFNULL(sag1.129_1,0)) AS '129_1',
SUM(IFNULL(sag1.7778_1,0)) AS '7778_1'


FROM
(
SELECT sag.name,sag.ou_name,
CASE WHEN sag.dataelementid=8936 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '8936_1',
CASE WHEN sag.dataelementid=6061 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '6061_7',
CASE WHEN sag.dataelementid=6061 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '6061_8',
CASE WHEN sag.dataelementid=7769 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7769_7',
CASE WHEN sag.dataelementid=7769 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7769_8',
CASE WHEN sag.dataelementid=6062 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '6062_7',
CASE WHEN sag.dataelementid=6062 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '6062_8',
CASE WHEN sag.dataelementid=7770 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7770_7',
CASE WHEN sag.dataelementid=7770 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7770_8',
CASE WHEN sag.dataelementid=6063 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '6063_7',
CASE WHEN sag.dataelementid=6063 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '6063_8',
CASE WHEN sag.dataelementid=7771 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7771_7',
CASE WHEN sag.dataelementid=7771 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7771_8',

CASE WHEN sag.dataelementid=125 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '125_1',
CASE WHEN sag.dataelementid=126 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '126_1',
CASE WHEN sag.dataelementid=123 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '123_1',
CASE WHEN sag.dataelementid=124 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '124_1',
CASE WHEN sag.dataelementid=6064 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '6064_7',
CASE WHEN sag.dataelementid=6064 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '6064_8',
CASE WHEN sag.dataelementid=7772 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7772_7',
CASE WHEN sag.dataelementid=7772 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7772_8',
CASE WHEN sag.dataelementid=6066 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '6066_7',
CASE WHEN sag.dataelementid=6066 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '6066_8',
CASE WHEN sag.dataelementid=7774 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7774_7',
CASE WHEN sag.dataelementid=7774 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7774_8',

CASE WHEN sag.dataelementid=7087 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7087_1',
CASE WHEN sag.dataelementid=7088 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7088_1',
CASE WHEN sag.dataelementid=7081 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7081_1',
CASE WHEN sag.dataelementid=7082 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7082_1',
CASE WHEN sag.dataelementid=7084 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7084_1',
CASE WHEN sag.dataelementid=7085 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7085_1',
CASE WHEN sag.dataelementid=7080 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7080_1',
CASE WHEN sag.dataelementid=7083 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7083_1',
CASE WHEN sag.dataelementid=7086 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7086_1',
CASE WHEN sag.dataelementid=7073 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7073_1',
CASE WHEN sag.dataelementid=7074 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7074_1',
CASE WHEN sag.dataelementid=7075 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7075_1',
CASE WHEN sag.dataelementid=7775 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7775_7',
CASE WHEN sag.dataelementid=7775 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7775_8',
CASE WHEN sag.dataelementid=8961 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '8961_7',
CASE WHEN sag.dataelementid=8961 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '8961_8',
CASE WHEN sag.dataelementid=7776 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7776_7',
CASE WHEN sag.dataelementid=7776 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7776_8',
CASE WHEN sag.dataelementid=8962 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '8962_7',
CASE WHEN sag.dataelementid=8962 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '8962_8',

CASE WHEN sag.dataelementid=128 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '128_7',
CASE WHEN sag.dataelementid=128 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '128_8',
CASE WHEN sag.dataelementid=7777 AND sag.categoryoptioncomboid=7 THEN sag.value END AS '7777_7',
CASE WHEN sag.dataelementid=7777 AND sag.categoryoptioncomboid=8 THEN sag.value END AS '7777_8',
CASE WHEN sag.dataelementid=6067 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6067_1',
CASE WHEN sag.dataelementid=1254 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '1254_1',
CASE WHEN sag.dataelementid=1253 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '1253_1',
CASE WHEN sag.dataelementid=1257 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '1257_1',
CASE WHEN sag.dataelementid=1256 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '1256_1',
CASE WHEN sag.dataelementid=6068 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6068_1',
CASE WHEN sag.dataelementid=6069 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6069_1',
CASE WHEN sag.dataelementid=6070 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6070_1',
CASE WHEN sag.dataelementid=6071 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '6071_1',
CASE WHEN sag.dataelementid=129 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '129_1',
CASE WHEN sag.dataelementid=7778 AND sag.categoryoptioncomboid=1 THEN sag.value END AS '7778_1'


FROM
(
SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','cur_mn' AS 'time'
FROM
(
SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
WHERE og.name IN ('Sub District Hospitals','District Hospitals','CHCs')
AND ou.name LIKE 'AMRITSAR District'

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (8936,6061,7769,6062,7770,6063,7771,125,126,123,124,6064,7772,6066,7774,
			   7087,7088,7081,7082,7084,7085,7080,7083,7086,7073,7074,7075,7775,8961,7776,8962,
			    128,7777,6067,1254,1253,1257,1256,6068,6069,6070,6071,129,7778)
AND dv.categoryoptioncomboid IN (1,7,8)
#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
AND MONTH(p.startdate) = MONTH('2013-11-01')
AND YEAR(p.startdate) = YEAR('2013-11-01')
AND periodtypeid = 3

)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1
GROUP BY sag1.name,sag1.ou_name
