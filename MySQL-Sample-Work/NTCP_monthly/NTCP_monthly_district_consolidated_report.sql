SELECT sag1.name,
SUM(IFNULL(7689_1,0)) AS '7689_1',
SUM(IFNULL(7717_1,0)) AS '7717_1',
SUM(IFNULL(7690_1,0)) AS '7690_1',
SUM(IFNULL(7718_1,0)) AS '7718_1',
SUM(IFNULL(7719_1,0)) AS '7719_1',
SUM(IFNULL(7720_1,0)) AS '7720_1',
SUM(IFNULL(7721_1,0)) AS '7721_1',
SUM(IFNULL(7765_1,0)) AS '7765_1',
SUM(IFNULL(7728_1,0)) AS '7728_1',
SUM(IFNULL(7733_1,0)) AS '7733_1',
IFNULL(GROUP_CONCAT(7725_1),'') AS '7725_1',
SUM(IFNULL(7726_1,0)) AS '7726_1',
SUM(IFNULL(7722_1,0)) AS '7722_1',
IFNULL(GROUP_CONCAT(7723_1),'') AS '7723_1',
SUM(IFNULL(8949_1,0)) AS '8949_1',
SUM(IFNULL(7693_1,0)) AS '7693_1',
IFNULL(GROUP_CONCAT(7766_1),'') AS '7766_1',
SUM(IFNULL(7736_1,0)) AS '7736_1',
SUM(IFNULL(7767_1,0)) AS '7767_1',
SUM(IFNULL(7768_1,0)) AS '7768_1'



FROM
(
SELECT sag.name,sag.ou_name,
CASE WHEN sag.dataelementid=7689 THEN sag.value END AS '7689_1',
CASE WHEN sag.dataelementid=7717 THEN sag.value END AS '7717_1',
CASE WHEN sag.dataelementid=7690 THEN sag.value END AS '7690_1',
CASE WHEN sag.dataelementid=7718 THEN sag.value END AS '7718_1',
CASE WHEN sag.dataelementid=7719 THEN sag.value END AS '7719_1',
CASE WHEN sag.dataelementid=7720 THEN sag.value END AS '7720_1',
CASE WHEN sag.dataelementid=7721 THEN sag.value END AS '7721_1',
CASE WHEN sag.dataelementid=7765 THEN sag.value END AS '7765_1',
CASE WHEN sag.dataelementid=7728 THEN sag.value END AS '7728_1',
CASE WHEN sag.dataelementid=7733 THEN sag.value END AS '7733_1',
CASE WHEN sag.dataelementid=7725 THEN sag.value	END AS '7725_1',
CASE WHEN sag.dataelementid=7726 THEN sag.value END AS '7726_1',
CASE WHEN sag.dataelementid=7722 THEN sag.value END AS '7722_1',
CASE WHEN sag.dataelementid=7723 THEN sag.value END AS '7723_1',
CASE WHEN sag.dataelementid=8949 THEN sag.value END AS '8949_1',
CASE WHEN sag.dataelementid=7693 THEN sag.value END AS '7693_1',
CASE WHEN sag.dataelementid=7766 THEN sag.value END AS '7766_1',
CASE WHEN sag.dataelementid=7736 THEN sag.value END AS '7736_1',
CASE WHEN sag.dataelementid=7767 THEN sag.value END AS '7767_1',
CASE WHEN sag.dataelementid=7768 THEN sag.value END AS '7768_1'


FROM
(
SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value
FROM
(
SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
WHERE og.name IN ('District','Blocks')
AND ou.name LIKE ('AMRITSAR District')



)asd

LEFT JOIN

(
SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (7689,7717,7690,7718,7719,7720,7721,7765,7728,
			   7733,7725,7726,7722,7723,8949,7693,7766,7736,
			   7767,7768)
AND dv.categoryoptioncomboid IN (1)
AND MONTH(p.startdate) = MONTH('2013-12-01')
AND YEAR(p.startdate) = YEAR('2013-12-01')
AND periodtypeid = 3



)asd1

ON asd.organisationunitid = asd1.sourceid
)sag
)sag1
GROUP BY sag1.name
