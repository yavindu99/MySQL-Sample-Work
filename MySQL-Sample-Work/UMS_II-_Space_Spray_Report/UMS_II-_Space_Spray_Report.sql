SELECT sag1.name,
SUM(IFNULL(7627_1_curr_mon,0)) AS '7627_1_curr_mon',
SUM(IFNULL(7628_1_curr_mon,0)) AS '7628_1_curr_mon',
SUM(IFNULL(7629_1_curr_mon,0)) AS '7629_1_curr_mon',
SUM(IFNULL(7630_1_curr_mon,0)) AS '7630_1_curr_mon',
SUM(IFNULL(7631_1_curr_mon,0)) AS '7631_1_curr_mon',
SUM(IFNULL(7632_1_curr_mon,0)) AS '7632_1_curr_mon',
SUM(IFNULL(7633_1_curr_mon,0)) AS '7633_1_curr_mon',
SUM(IFNULL(7372_1_curr_mon,0)) AS '7372_1_curr_mon',
SUM(IFNULL(7373_1_curr_mon,0)) AS '7373_1_curr_mon',
SUM(IFNULL(7374_1_curr_mon,0)) AS '7374_1_curr_mon',
SUM(IFNULL(7372_1_pre_mon,0)) AS '7372_1_pre_mon',
SUM(IFNULL(7373_1_pre_mon,0)) AS '7373_1_pre_mon',
SUM(IFNULL(7374_1_pre_mon,0)) AS '7374_1_pre_mon'

FROM
(
SELECT sag.name,sag.dataelementid,sag.value,
CASE WHEN sag.dataelementid=7627 AND sag.time='curr_mon' AND sag.gname IN ('District','Blocks') THEN sag.value END AS '7627_1_curr_mon',
CASE WHEN sag.dataelementid=7628 AND sag.time='curr_mon' AND sag.gname IN ('District','Blocks') THEN sag.value END AS '7628_1_curr_mon',
CASE WHEN sag.dataelementid=7629 AND sag.time='curr_mon' AND sag.gname IN ('District','Blocks') THEN sag.value END AS '7629_1_curr_mon',
CASE WHEN sag.dataelementid=7630 AND sag.time='curr_mon' AND sag.gname IN ('District','Blocks') THEN sag.value END AS '7630_1_curr_mon',
CASE WHEN sag.dataelementid=7631 AND sag.time='curr_mon' AND sag.gname IN ('District','Blocks') THEN sag.value END AS '7631_1_curr_mon',
CASE WHEN sag.dataelementid=7632 AND sag.time='curr_mon' AND sag.gname IN ('District','Blocks') THEN sag.value END AS '7632_1_curr_mon',
CASE WHEN sag.dataelementid=7633 AND sag.time='curr_mon' AND sag.gname IN ('District','Blocks') THEN sag.value END AS '7633_1_curr_mon',
CASE WHEN sag.dataelementid=7372 AND sag.time='curr_mon' AND sag.gname IN ('District Hospitals','Sub District Hospitals','PHCs','CHCs','Sub Centres','RH','Medical College') THEN sag.value END AS '7372_1_curr_mon',
CASE WHEN sag.dataelementid=7373 AND sag.time='curr_mon' AND sag.gname IN ('District Hospitals','Sub District Hospitals','PHCs','CHCs','Sub Centres','RH','Medical College') THEN sag.value END AS '7373_1_curr_mon',
CASE WHEN sag.dataelementid=7374 AND sag.time='curr_mon' AND sag.gname IN ('District Hospitals','Sub District Hospitals','PHCs','CHCs','Sub Centres','RH','Medical College') THEN sag.value END AS '7374_1_curr_mon',
CASE WHEN sag.dataelementid=7372 AND sag.time='pre_mon' AND sag.gname IN ('District Hospitals','Sub District Hospitals','PHCs','CHCs','Sub Centres','RH','Medical College') THEN sag.value END AS '7372_1_pre_mon',
CASE WHEN sag.dataelementid=7373 AND sag.time='pre_mon' AND sag.gname IN ('District Hospitals','Sub District Hospitals','PHCs','CHCs','Sub Centres','RH','Medical College') THEN sag.value END AS '7373_1_pre_mon',
CASE WHEN sag.dataelementid=7374 AND sag.time='pre_mon' AND sag.gname IN ('District Hospitals','Sub District Hospitals','PHCs','CHCs','Sub Centres','RH','Medical College') THEN sag.value END AS '7374_1_pre_mon'
          
    
FROM
(
#current_month
SELECT asd.organisationunitid,asd.name,asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','curr_mon' AS 'time', MONTH(asd1.startdate)
FROM
(
SELECT os.organisationunitid , ou.name,og.name AS 'gname'
FROM orgunitgroupmembers ogm 
INNER JOIN orgunitgroup og ON og.orgunitgroupid = ogm.orgunitgroupid
INNER JOIN _orgunitstructure os ON os.organisationunitid = ogm.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('District','Blocks','District Hospitals','Sub District Hospitals','PHCs','CHCs','Sub Centres','RH','Medical College')
#AND ou.name LIKE ('LUDHIANA District')
)asd

LEFT JOIN

(
SELECT dv.dataelementid , dv.sourceid , dv.periodid , dv.categoryoptioncomboid , p.startdate ,dv.value FROM 
datavalue dv 
INNER JOIN period p ON p.periodid = dv.periodid
WHERE MONTH(p.startdate) = MONTH('2014-01-01')
AND YEAR(p.startdate) = YEAR('2014-01-01')   
AND dv.dataelementid IN (7627,7628,7629,7630,7631,7632,7633,7372,7373,7374)
AND dv.categoryoptioncomboid = 1
AND periodtypeid = 3
)asd1

ON  asd.organisationunitid = asd1.sourceid
GROUP BY asd.name,asd.gname,asd1.dataelementid

UNION

#up_to_previous_month
SELECT asd.organisationunitid,asd.name,asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','pre_mon' AS 'time', MONTH(asd1.startdate)
FROM
(
SELECT os.organisationunitid , ou.name,og.name AS 'gname'
FROM orgunitgroupmembers ogm 
INNER JOIN orgunitgroup og ON og.orgunitgroupid = ogm.orgunitgroupid
INNER JOIN _orgunitstructure os ON os.organisationunitid = ogm.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
WHERE og.name IN ('District','Blocks','District Hospitals','Sub District Hospitals','PHCs','CHCs','Sub Centres','RH','Medical College')
#AND ou.name LIKE ('LUDHIANA District')
)asd

LEFT JOIN

(
SELECT dv.dataelementid , dv.sourceid , dv.periodid , dv.categoryoptioncomboid , p.startdate ,dv.value FROM 
datavalue dv 
INNER JOIN period p ON p.periodid = dv.periodid
WHERE MONTH(p.startdate) < MONTH('2014-01-01')+1
AND YEAR(p.startdate) = YEAR('2014-01-01')  
AND dv.dataelementid IN (7372,7373,7374)
AND dv.categoryoptioncomboid = 1
AND periodtypeid = 3
)asd1

ON  asd.organisationunitid = asd1.sourceid
GROUP BY asd.name,asd.gname,asd1.dataelementid

)sag
)sag1

GROUP BY sag1.name


