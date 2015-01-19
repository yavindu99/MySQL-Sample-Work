SELECT sag2.name,
SUM(IFNULL(7528_1_curr ,0)) AS '7528_1_curr',
SUM(IFNULL(7529_1_curr ,0)) AS '7529_1_curr',
SUM(IFNULL(7530_1_curr ,0)) AS '7530_1_curr',
SUM(IFNULL(7525_1_curr ,0)) AS '7525_1_curr',
SUM(IFNULL(7526_1_curr ,0)) AS '7526_1_curr',
SUM(IFNULL(8003_1_curr ,0)) AS '8003_1_curr',
SUM(IFNULL(7530_1_upto ,0)) AS '7530_1_upto',
SUM(IFNULL(8003_1_curr ,0)) AS '8003_1_upto'

FROM


	(
	SELECT sag1.dataelementid , sag1.value , sag1.name,
	CASE WHEN sag1.dataelementid = '7528' AND sag1.cum='curr' THEN sag1.value END AS '7528_1_curr',
	CASE WHEN sag1.dataelementid = '7529' AND sag1.cum='curr' THEN sag1.value END AS '7529_1_curr',
	CASE WHEN sag1.dataelementid = '7530' AND sag1.cum='curr' THEN sag1.value END AS '7530_1_curr',
	CASE WHEN sag1.dataelementid = '7525' AND sag1.cum='curr' THEN sag1.value END AS '7525_1_curr',
	CASE WHEN sag1.dataelementid = '7526' AND sag1.cum='curr' THEN sag1.value END AS '7526_1_curr',
	CASE WHEN sag1.dataelementid = '8003' AND sag1.cum='curr' THEN sag1.value END AS '8003_1_curr',
	CASE WHEN sag1.dataelementid = '7530' AND sag1.cum='upto' THEN sag1.value END AS '7530_1_upto',
	CASE WHEN sag1.dataelementid = '8003' AND sag1.cum='upto' THEN sag1.value END AS '8003_1_upto'
	FROM

		(
		SELECT asd.organisationunitid,asd.gname,asd1.dataelementid,asd1.value , asd.name , 'curr' AS 'cum'
		FROM
			(
			SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
			FROM orgunitgroupmembers ogm
			INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
			INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
			INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3

			WHERE og.name IN ('CHCs','Sub District Hospitals','District Hospitals','PHCs','RH','Medical Collage') 
			)asd

			LEFT JOIN


			(	
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN ('7528','7529','7530','7525','7526','8003')
			AND dv.categoryoptioncomboid IN (1)
			AND MONTH(p.startdate) = MONTH('2013-09-30')
			AND YEAR(p.startdate) = YEAR('2013-09-30')
			AND periodtypeid = 3
			)asd1

			ON asd.organisationunitid = asd1.sourceid
			
			
			
UNION			
			
			
		SELECT asd.organisationunitid,asd.gname,asd1.dataelementid,asd1.value , asd.name ,'upto' AS 'cum'
		FROM
			(
			SELECT os.organisationunitid,os.idlevel3,og.name AS 'gname',ou.name,os.level
			FROM orgunitgroupmembers ogm
			INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
			INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
			INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3

			WHERE og.name IN ('CHCs','Sub District Hospitals','District Hospitals','PHCs','RH','Medical Collage') 
			)asd

			LEFT JOIN


			(	
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN ('7530','8003')
			AND dv.categoryoptioncomboid IN (1)
			AND MONTH(p.startdate) < MONTH('2013-09-30') + 1
			AND YEAR(p.startdate) = YEAR('2013-09-30')
			AND periodtypeid = 3
			)asd1

			ON asd.organisationunitid = asd1.sourceid
			
			
			
				
			
			
)sag1
)sag2

GROUP BY sag2.name
	