SELECT sag1.name,
SUM(IFNULL(sag1.7885_curr_mn,0)) AS '7885_curr_mn',
SUM(IFNULL(sag1.7887_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7886_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7888_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7914_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7921_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7915_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7922_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7990_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7991_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.8122_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.8123_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7899_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.8121_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7902_curr_mn,0)) AS '7885_curr_mn', 
SUM(IFNULL(sag1.7903_curr_mn,0)) AS '7885_curr_mn', 


SUM(IFNULL(sag1.7885_curr_mn,0)) AS '7885_april_1',
SUM(IFNULL(sag1.7887_curr_mn,0)) AS '7887_april_1', 
SUM(IFNULL(sag1.7886_curr_mn,0)) AS '7886_april_1', 
SUM(IFNULL(sag1.7888_curr_mn,0)) AS '7888_april_1', 
SUM(IFNULL(sag1.7914_curr_mn,0)) AS '7914_april_1', 
SUM(IFNULL(sag1.7921_curr_mn,0)) AS '7921_april_1', 
SUM(IFNULL(sag1.7915_curr_mn,0)) AS '7915_april_1', 
SUM(IFNULL(sag1.7922_curr_mn,0)) AS '7922_april_1', 
SUM(IFNULL(sag1.7990_curr_mn,0)) AS '7990_april_1', 
SUM(IFNULL(sag1.7991_curr_mn,0)) AS '7991_april_1', 
SUM(IFNULL(sag1.8122_curr_mn,0)) AS '8122_april_1', 
SUM(IFNULL(sag1.8123_curr_mn,0)) AS '8123_april_1', 
SUM(IFNULL(sag1.7899_curr_mn,0)) AS '7899_april_1', 
SUM(IFNULL(sag1.8121_curr_mn,0)) AS '8121_april_1', 
SUM(IFNULL(sag1.7902_curr_mn,0)) AS '7902_april_1', 
SUM(IFNULL(sag1.7903_curr_mn,0)) AS '7903_april_1', 


SUM(IFNULL(sag1.7885_curr_mn,0)) AS '7885_cum_from',
SUM(IFNULL(sag1.7887_curr_mn,0)) AS '7887_cum_from', 
SUM(IFNULL(sag1.7886_curr_mn,0)) AS '7886_cum_from', 
SUM(IFNULL(sag1.7888_curr_mn,0)) AS '7888_cum_from', 
SUM(IFNULL(sag1.7914_curr_mn,0)) AS '7914_cum_from', 
SUM(IFNULL(sag1.7921_curr_mn,0)) AS '7921_cum_from', 
SUM(IFNULL(sag1.7915_curr_mn,0)) AS '7915_cum_from', 
SUM(IFNULL(sag1.7922_curr_mn,0)) AS '7922_cum_from', 
SUM(IFNULL(sag1.7990_curr_mn,0)) AS '7990_cum_from', 
SUM(IFNULL(sag1.7991_curr_mn,0)) AS '7991_cum_from', 
SUM(IFNULL(sag1.8122_curr_mn,0)) AS '8122_cum_from', 
SUM(IFNULL(sag1.8123_curr_mn,0)) AS '8123_cum_from', 
SUM(IFNULL(sag1.7899_curr_mn,0)) AS '7899_cum_from', 
SUM(IFNULL(sag1.8121_curr_mn,0)) AS '8121_cum_from', 
SUM(IFNULL(sag1.7902_curr_mn,0)) AS '7902_cum_from', 
SUM(IFNULL(sag1.7903_curr_mn,0)) AS '7903_cum_from' 
 
FROM
(
SELECT sag.name,
CASE WHEN sag.dataelementid=7885 AND sag.time='cur_mn' THEN sag.value END AS '7885_curr_mn', 
CASE WHEN sag.dataelementid=7887 AND sag.time='cur_mn' THEN sag.value END AS '7887_curr_mn', 
CASE WHEN sag.dataelementid=7886 AND sag.time='cur_mn' THEN sag.value END AS '7886_curr_mn', 
CASE WHEN sag.dataelementid=7888 AND sag.time='cur_mn' THEN sag.value END AS '7888_curr_mn', 
CASE WHEN sag.dataelementid=7914 AND sag.time='cur_mn' THEN sag.value END AS '7914_curr_mn', 
CASE WHEN sag.dataelementid=7921 AND sag.time='cur_mn' THEN sag.value END AS '7921_curr_mn', 
CASE WHEN sag.dataelementid=7915 AND sag.time='cur_mn' THEN sag.value END AS '7915_curr_mn', 
CASE WHEN sag.dataelementid=7922 AND sag.time='cur_mn' THEN sag.value END AS '7922_curr_mn', 
CASE WHEN sag.dataelementid=7990 AND sag.time='cur_mn' THEN sag.value END AS '7990_curr_mn', 
CASE WHEN sag.dataelementid=7991 AND sag.time='cur_mn' THEN sag.value END AS '7991_curr_mn', 
CASE WHEN sag.dataelementid=8122 AND sag.time='cur_mn' THEN sag.value END AS '8122_curr_mn', 
CASE WHEN sag.dataelementid=8123 AND sag.time='cur_mn' THEN sag.value END AS '8123_curr_mn', 
CASE WHEN sag.dataelementid=7899 AND sag.time='cur_mn' THEN sag.value END AS '7899_curr_mn', 
CASE WHEN sag.dataelementid=8121 AND sag.time='cur_mn' THEN sag.value END AS '8121_curr_mn', 
CASE WHEN sag.dataelementid=7902 AND sag.time='cur_mn' THEN sag.value END AS '7902_curr_mn',
CASE WHEN sag.dataelementid=7903 AND sag.time='cur_mn' THEN sag.value END AS '7903_curr_mn', 


CASE WHEN sag.dataelementid=7885 AND sag.time='april_1' THEN sag.value END AS '7885_april_1', 
CASE WHEN sag.dataelementid=7887 AND sag.time='april_1' THEN sag.value END AS '7887_april_1', 
CASE WHEN sag.dataelementid=7886 AND sag.time='april_1' THEN sag.value END AS '7886_april_1', 
CASE WHEN sag.dataelementid=7888 AND sag.time='april_1' THEN sag.value END AS '7888_april_1', 
CASE WHEN sag.dataelementid=7914 AND sag.time='april_1' THEN sag.value END AS '7914_april_1', 
CASE WHEN sag.dataelementid=7921 AND sag.time='april_1' THEN sag.value END AS '7921_april_1', 
CASE WHEN sag.dataelementid=7915 AND sag.time='april_1' THEN sag.value END AS '7915_april_1', 
CASE WHEN sag.dataelementid=7922 AND sag.time='april_1' THEN sag.value END AS '7922_april_1', 
CASE WHEN sag.dataelementid=7990 AND sag.time='april_1' THEN sag.value END AS '7990_april_1', 
CASE WHEN sag.dataelementid=7991 AND sag.time='april_1' THEN sag.value END AS '7991_april_1', 
CASE WHEN sag.dataelementid=8122 AND sag.time='april_1' THEN sag.value END AS '8122_april_1', 
CASE WHEN sag.dataelementid=8123 AND sag.time='april_1' THEN sag.value END AS '8123_april_1', 
CASE WHEN sag.dataelementid=7899 AND sag.time='april_1' THEN sag.value END AS '7899_april_1', 
CASE WHEN sag.dataelementid=8121 AND sag.time='april_1' THEN sag.value END AS '8121_april_1', 
CASE WHEN sag.dataelementid=7902 AND sag.time='april_1' THEN sag.value END AS '7902_april_1',
CASE WHEN sag.dataelementid=7903 AND sag.time='april_1' THEN sag.value END AS '7903_april_1', 



CASE WHEN sag.dataelementid=7885 AND sag.time='cum_from' THEN sag.value END AS '7885_cum_from', 
CASE WHEN sag.dataelementid=7887 AND sag.time='cum_from' THEN sag.value END AS '7887_cum_from', 
CASE WHEN sag.dataelementid=7886 AND sag.time='cum_from' THEN sag.value END AS '7886_cum_from', 
CASE WHEN sag.dataelementid=7888 AND sag.time='cum_from' THEN sag.value END AS '7888_cum_from', 
CASE WHEN sag.dataelementid=7914 AND sag.time='cum_from' THEN sag.value END AS '7914_cum_from', 
CASE WHEN sag.dataelementid=7921 AND sag.time='cum_from' THEN sag.value END AS '7921_cum_from', 
CASE WHEN sag.dataelementid=7915 AND sag.time='cum_from' THEN sag.value END AS '7915_cum_from', 
CASE WHEN sag.dataelementid=7922 AND sag.time='cum_from' THEN sag.value END AS '7922_cum_from', 
CASE WHEN sag.dataelementid=7990 AND sag.time='cum_from' THEN sag.value END AS '7990_cum_from', 
CASE WHEN sag.dataelementid=7991 AND sag.time='cum_from' THEN sag.value END AS '7991_cum_from', 
CASE WHEN sag.dataelementid=8122 AND sag.time='cum_from' THEN sag.value END AS '8122_cum_from', 
CASE WHEN sag.dataelementid=8123 AND sag.time='cum_from' THEN sag.value END AS '8123_cum_from', 
CASE WHEN sag.dataelementid=7899 AND sag.time='cum_from' THEN sag.value END AS '7899_cum_from', 
CASE WHEN sag.dataelementid=8121 AND sag.time='cum_from' THEN sag.value END AS '8121_cum_from', 
CASE WHEN sag.dataelementid=7902 AND sag.time='cum_from' THEN sag.value END AS '7902_cum_from',
CASE WHEN sag.dataelementid=7903 AND sag.time='cum_from' THEN sag.value END AS '7903_cum_from' 


FROM
(
#Current_month
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
#AND ou.name LIKE 'Jalandhar District'

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7885,7887,7886,7888,7914,7921,7915,7922,7990,7991,8122,8123,7899,8121,7902,7903)
AND dv.categoryoptioncomboid IN (1,10)
AND MONTH(p.startdate) = MONTH('2013-10-01')
AND YEAR(p.startdate) = YEAR('2013-10-31')
AND periodtypeid = 3

)asd1

ON asd.organisationunitid = asd1.sourceid

#######################################################

UNION

#April
SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','april_1' AS 'time'
FROM
(
SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
WHERE og.name IN ('Sub District Hospitals','District Hospitals','CHCs')
#AND ou.name LIKE 'Jalandhar District'

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7885,7887,7886,7888,7914,7921,7915,7922,7990,7991,8122,8123,7899,8121,7902,7903)
AND dv.categoryoptioncomboid IN (1,10)
AND DAY(p.startdate) = DAY('2013-04-01')
AND MONTH(p.startdate) =  MONTH('2013-04-01')
AND YEAR(p.startdate) = YEAR('2013-04-01')
AND periodtypeid = 3

)asd1

ON asd.organisationunitid = asd1.sourceid

#####################################################

UNION

#cum_from_april_1
SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','cum_from' AS 'time'
FROM
(
SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
WHERE og.name IN ('Sub District Hospitals','District Hospitals','CHCs')
#AND ou.name LIKE 'Jalandhar District'

)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7885,7887,7886,7888,7914,7921,7915,7922,7990,7991,8122,8123,7899,8121,7902,7903)
AND dv.categoryoptioncomboid IN (1,10)
AND p.startdate BETWEEN  MONTH('2013-04-01') AND  MONTH('2013-04-01')
AND YEAR(p.startdate) = YEAR('2013-04-01')
AND periodtypeid = 3

)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1

GROUP BY sag1.name



