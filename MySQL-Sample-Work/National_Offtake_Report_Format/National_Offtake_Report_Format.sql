SELECT 
CASE WHEN sag.dataelementid=30 AND sag.time LIKE 'month' AND sag.month=1 THEN sag.value END AS '30_m_1'

FROM
(
SELECT asd.organisationunitid,asd.name,asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','curr_week' AS 'time',asd1.Month
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD','Silo')
#And ou.name like 'Division Chittagong'

	
)asd

LEFT JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,WEEK(p.startdate) AS 'Week',MONTH(p.startdate) AS 'Month'
FROM datavalue dv
INNER JOIN period p ON p.periodid=dv.periodid 
WHERE dv.dataelementid IN (30,8,31,9,32,10,33,11,34,12,35,13,123,121,126,124,37,15,
			   36,14,38,16,39,17,40,18,117,115,114,112,41,19,120,118,
		           42,20,52,53,54,55,56,57,122,125,59,58,60,61,62,116,113,63,
			   119,64,16,17,19,20)
AND dv.categoryoptioncomboid IN (1)
AND WEEK(p.startdate)=WEEK('2013-12-01')
AND MONTH(p.startdate)=MONTH('2013-12-01')
AND YEAR(p.startdate) = MONTH('2013-12-01')
AND p.periodtypeid=2
)asd1

ON asd.organisationunitid = asd1.sourceid
GROUP BY asd1.dataelementid,asd.name,asd1.week

UNION


SELECT asd.organisationunitid,asd.name,asd.gname,asd1.dataelementid,SUM(IFNULL(asd1.value,0)) AS 'value','mon' AS 'time',asd1.Month
FROM
(
SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
WHERE og.name IN ('CSD','LSD','Silo')
#AND ou.name LIKE 'Division Chittagong'

	
)asd

LEFT JOIN 

(
SELECT dv.sourceid,dv.dataelementid,dv.value,MONTH(p.startdate) AS 'Month'
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
GROUP BY asd1.dataelementid,asd.name,asd1.Month
)sag

