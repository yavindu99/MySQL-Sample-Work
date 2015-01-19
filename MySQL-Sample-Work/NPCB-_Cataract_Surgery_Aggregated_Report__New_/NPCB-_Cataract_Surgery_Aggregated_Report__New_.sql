SELECT fin.gname,
IFNULL(fin1.7801_1,0) AS '7801_1',
IFNULL(fin1.7802_1,0) AS '7802_1',
IFNULL(7803_7,0) AS '7803_7',
IFNULL(7803_8,0) AS '7803_8',
IFNULL(7804_1,0) AS '7804_1',
IFNULL(7984_7,0) AS '7984_7',
IFNULL(7984_8,0) AS '7984_8'
FROM
(
SELECT 
CASE WHEN orgunitgroupid=7 THEN '3.Distt. Hospital'
WHEN orgunitgroupid=8 THEN '4.Other Govt.Institutions SDH/CHC/PHC'
WHEN orgunitgroupid=10 THEN '1.Medical College'
WHEN orgunitgroupid=11 THEN '2.Mobile Team'
WHEN orgunitgroupid=13 THEN '5.Voluntary Organizations'
WHEN orgunitgroupid=15 THEN '6.Pvt. Medical Practitioners' END AS gname
FROM orgunitgroup
)fin

LEFT JOIN 
(
SELECT sag2.gname,  
SUM(IFNULL(7801_1,0)) AS '7801_1',
SUM(IFNULL(7802_1,0)) AS '7802_1',
SUM(IFNULL(7803_7,0)) AS '7803_7',
SUM(IFNULL(7803_8,0)) AS '7803_8',
SUM(IFNULL(7804_1,0)) AS '7804_1',
SUM(IFNULL(7984_7,0)) AS '7984_7',
SUM(IFNULL(7984_8,0)) AS '7984_8'
FROM 
(
SELECT sag1.gname, 
CASE WHEN sag1.dataelementid IN (7801,7826,7827) AND sag1.categoryoptioncomboid IN (1) THEN sag1.value END AS '7801_1',
CASE WHEN sag1.dataelementid IN (7802,7828,7829) AND sag1.categoryoptioncomboid IN (1) THEN sag1.value END AS '7802_1',
CASE WHEN sag1.dataelementid IN (7803,7830,7831) AND sag1.categoryoptioncomboid IN (7) THEN sag1.value END AS '7803_7',
CASE WHEN sag1.dataelementid IN (7803,7830,7831) AND sag1.categoryoptioncomboid IN (8) THEN sag1.value END AS '7803_8',
CASE WHEN sag1.dataelementid IN (7804,7834,7835) AND sag1.categoryoptioncomboid IN (1) THEN sag1.value END AS '7804_1',
CASE WHEN sag1.dataelementid IN (7984,7832,7833) AND sag1.categoryoptioncomboid IN (7) THEN sag1.value END AS '7984_7',
CASE WHEN sag1.dataelementid IN (7984,7832,7833) AND sag1.categoryoptioncomboid IN (8) THEN sag1.value END AS '7984_8'

FROM
	(
	SELECT sag.gname,sag.dataelementid , sag.categoryoptioncomboid,SUM(IFNULL(sag.value,0)) AS 'value' 
	FROM
	(
		SELECT o1.organisationunitid , o1.name , 
		CASE WHEN o1.gname IN ('Medical College') THEN '1.Medical College' 
		WHEN o1.gname IN ('District Hospitals') THEN '3.Distt. Hospital' 
		WHEN o1.gname IN ('CHCs' , 'PHCs' , 'Sub District Hospitals' ,  'RH' ) THEN 'Other Govt.Institutions SDH/CHC/PHC' 
		WHEN o2.dataelementid IN (7826,7828,7830,7832,7834) THEN '5.Voluntary Organizations' 
		WHEN o2.dataelementid IN (7827,7829,7831,7833,7835) THEN '6.Pvt. Medical Practitioners' 
		END AS 'gname', 
		o2.dataelementid , o2.value , o2.categoryoptioncomboid
		FROM

		(
		SELECT ou.organisationunitid , ou.name , og.name AS gname
		FROM orgunitgroup og 
		INNER JOIN orgunitgroupmembers ogm ON ogm.orgunitgroupid = og.orgunitgroupid
		INNER JOIN organisationunit ou ON ou.organisationunitid = ogm.organisationunitid
		INNER JOIN _orgunitstructure os ON os.organisationunitid = ou.organisationunitid
		WHERE og.name IN('District','District Hospitals' , 'CHCs' , 'PHCs' , 'Sub District Hospitals' ,  'RH' ,'Medical College' ) 
		AND os.idlevel3 IN (
					SELECT ou.organisationunitid 
					FROM organisationunit ou
					WHERE ou.name LIKE 'MUKTSAR District' 
				
				      )

		)o1

		LEFT JOIN


		(
		SELECT dv.dataelementid , dv.sourceid , dv.periodid , dv.categoryoptioncomboid , p.startdate ,dv.value FROM 
		datavalue dv 
		INNER JOIN period p ON p.periodid = dv.periodid
		WHERE p.startdate BETWEEN '2013-11-01' AND '2013-11-31'
		AND dv.dataelementid IN (7801,7802,7803,7804,7984,7826,7828,7830,7832,7834,7835,7833,7831,7829,7827)
		AND dv.categoryoptioncomboid IN (1,7,8)
		AND periodtypeid = 3
		)o2

		ON o2.sourceid = o1.organisationunitid
	)sag
	GROUP BY sag.gname,sag.dataelementid,sag.categoryoptioncomboid
	)sag1
)sag2
GROUP BY sag2.gname
)fin1
ON fin.gname=fin1.gname
WHERE fin.gname IS NOT NULL
ORDER BY fin.gname