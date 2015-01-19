SELECT sag1.name,
SUM(IFNULL(sag1.109r,0)) AS '109r',
SUM(IFNULL(sag1.109w,0)) AS '109w',
SUM(IFNULL(sag1.109p,0)) AS '109p',
SUM(IFNULL(sag1.111r,0)) AS '111r',
SUM(IFNULL(sag1.111w,0)) AS '111w',
SUM(IFNULL(sag1.111p,0)) AS '111p',
SUM(IFNULL(sag1.127,0)) AS '127',
SUM(IFNULL(sag1.128,0)) AS '128',
SUM(IFNULL(sag1.129,0)) AS '129',
SUM(IFNULL(sag1.6,0)) AS '6',
SUM(IFNULL(sag1.8,0)) AS '8',
SUM(IFNULL(sag1.9,0)) AS '9',
SUM(IFNULL(sag1.10,0)) AS '10',
SUM(IFNULL(sag1.11,0)) AS '11',
SUM(IFNULL(sag1.12,0)) AS '12',
SUM(IFNULL(sag1.13,0)) AS '13',
SUM(IFNULL(sag1.14,0)) AS '14',
SUM(IFNULL(sag1.15,0)) AS '15',
SUM(IFNULL(sag1.16,0)) AS '16',
SUM(IFNULL(sag1.17,0)) AS '17',
SUM(IFNULL(sag1.18,0)) AS '18',
SUM(IFNULL(sag1.19,0)) AS '19',
SUM(IFNULL(sag1.20,0)) AS '20',
SUM(IFNULL(sag1.21,0)) AS '21',
SUM(IFNULL(sag1.22,0)) AS '22',
SUM(IFNULL(sag1.25,0)) AS '25',
SUM(IFNULL(sag1.28,0)) AS '28',
SUM(IFNULL(sag1.30,0)) AS '30',
SUM(IFNULL(sag1.31,0)) AS '31',
SUM(IFNULL(sag1.32,0)) AS '32',
SUM(IFNULL(sag1.33,0)) AS '33',
SUM(IFNULL(sag1.34,0)) AS '34',
SUM(IFNULL(sag1.35,0)) AS '35',
SUM(IFNULL(sag1.36,0)) AS '36',
SUM(IFNULL(sag1.37,0)) AS '37',
SUM(IFNULL(sag1.38,0)) AS '38',
SUM(IFNULL(sag1.39,0)) AS '39',
SUM(IFNULL(sag1.40,0)) AS '40',
SUM(IFNULL(sag1.41,0)) AS '41',
SUM(IFNULL(sag1.42,0)) AS '42',
SUM(IFNULL(sag1.43,0)) AS '43',
SUM(IFNULL(sag1.44,0)) AS '44',
SUM(IFNULL(sag1.50,0)) AS '50',
SUM(IFNULL(sag1.53,0)) AS '53',
SUM(IFNULL(sag1.54,0)) AS '54',
SUM(IFNULL(sag1.55,0)) AS '55',
SUM(IFNULL(sag1.56,0)) AS '56',
SUM(IFNULL(sag1.57,0)) AS '57',
SUM(IFNULL(sag1.58,0)) AS '58',
SUM(IFNULL(sag1.59,0)) AS '59',
SUM(IFNULL(sag1.60,0)) AS '60',
SUM(IFNULL(sag1.61,0)) AS '61',
SUM(IFNULL(sag1.62,0)) AS '62',
SUM(IFNULL(sag1.64,0)) AS '64',
SUM(IFNULL(sag1.65,0)) AS '65',
SUM(IFNULL(sag1.66,0)) AS '66',
SUM(IFNULL(sag1.78,0)) AS '78',
SUM(IFNULL(sag1.80,0)) AS '80',
SUM(IFNULL(sag1.82,0)) AS '82',
SUM(IFNULL(sag1.84,0)) AS '84',
SUM(IFNULL(sag1.86,0)) AS '86',
SUM(IFNULL(sag1.88,0)) AS '88',
SUM(IFNULL(sag1.90,0)) AS '90',
SUM(IFNULL(sag1.112,0)) AS '112',
SUM(IFNULL(sag1.113,0)) AS '113',
SUM(IFNULL(sag1.114,0)) AS '114',
SUM(IFNULL(sag1.115,0)) AS '115',
SUM(IFNULL(sag1.116,0)) AS '116',
SUM(IFNULL(sag1.117,0)) AS '117',
SUM(IFNULL(sag1.118,0)) AS '118',
SUM(IFNULL(sag1.119,0)) AS '119',
SUM(IFNULL(sag1.120,0)) AS '120',
SUM(IFNULL(sag1.122,0)) AS '122',
SUM(IFNULL(sag1.123,0)) AS '123',
SUM(IFNULL(sag1.124,0)) AS '124',
SUM(IFNULL(sag1.125,0)) AS '125',
SUM(IFNULL(sag1.126,0)) AS '126',
SUM(IFNULL(sag1.631,0)) AS '631'

FROM
(
SELECT sag.name,
CASE WHEN sag.dataelementid LIKE '109r' THEN sag.value END AS '109r',
CASE WHEN sag.dataelementid LIKE '109w' THEN sag.value END AS '109w',
CASE WHEN sag.dataelementid LIKE '109p' THEN sag.value END AS '109p',
CASE WHEN sag.dataelementid LIKE '111r' THEN sag.value END AS '111r',
CASE WHEN sag.dataelementid LIKE '111w' THEN sag.value END AS '111w',
CASE WHEN sag.dataelementid LIKE '111p' THEN sag.value END AS '111p',
CASE WHEN sag.dataelementid LIKE '127' THEN sag.value END AS '127',
CASE WHEN sag.dataelementid LIKE '128' THEN sag.value END AS '128',
CASE WHEN sag.dataelementid LIKE '129' THEN sag.value END AS '129',
CASE WHEN sag.dataelementid LIKE '6' THEN sag.value END AS '6',
CASE WHEN sag.dataelementid LIKE '8' THEN sag.value END AS '8',
CASE WHEN sag.dataelementid LIKE '9' THEN sag.value END AS '9',
CASE WHEN sag.dataelementid LIKE '10' THEN sag.value END AS '10',
CASE WHEN sag.dataelementid LIKE '11' THEN sag.value END AS '11',
CASE WHEN sag.dataelementid LIKE '12' THEN sag.value END AS '12',
CASE WHEN sag.dataelementid LIKE '13' THEN sag.value END AS '13',
CASE WHEN sag.dataelementid LIKE '14' THEN sag.value END AS '14',
CASE WHEN sag.dataelementid LIKE '15' THEN sag.value END AS '15',
CASE WHEN sag.dataelementid LIKE '16' THEN sag.value END AS '16',
CASE WHEN sag.dataelementid LIKE '17' THEN sag.value END AS '17',
CASE WHEN sag.dataelementid LIKE '18' THEN sag.value END AS '18',
CASE WHEN sag.dataelementid LIKE '19' THEN sag.value END AS '19',
CASE WHEN sag.dataelementid LIKE '20' THEN sag.value END AS '20',
CASE WHEN sag.dataelementid LIKE '21' THEN sag.value END AS '21',
CASE WHEN sag.dataelementid LIKE '22' THEN sag.value END AS '22',
CASE WHEN sag.dataelementid LIKE '25' THEN sag.value END AS '25',
CASE WHEN sag.dataelementid LIKE '28' THEN sag.value END AS '28',
CASE WHEN sag.dataelementid LIKE '30' THEN sag.value END AS '30',
CASE WHEN sag.dataelementid LIKE '31' THEN sag.value END AS '31',
CASE WHEN sag.dataelementid LIKE '32' THEN sag.value END AS '32',
CASE WHEN sag.dataelementid LIKE '33' THEN sag.value END AS '33',
CASE WHEN sag.dataelementid LIKE '34' THEN sag.value END AS '34',
CASE WHEN sag.dataelementid LIKE '35' THEN sag.value END AS '35',
CASE WHEN sag.dataelementid LIKE '36' THEN sag.value END AS '36',
CASE WHEN sag.dataelementid LIKE '37' THEN sag.value END AS '37',
CASE WHEN sag.dataelementid LIKE '38' THEN sag.value END AS '38',
CASE WHEN sag.dataelementid LIKE '39' THEN sag.value END AS '39',
CASE WHEN sag.dataelementid LIKE '40' THEN sag.value END AS '40',
CASE WHEN sag.dataelementid LIKE '41' THEN sag.value END AS '41',
CASE WHEN sag.dataelementid LIKE '42' THEN sag.value END AS '42',
CASE WHEN sag.dataelementid LIKE '43' THEN sag.value END AS '43',
CASE WHEN sag.dataelementid LIKE '44' THEN sag.value END AS '44',
CASE WHEN sag.dataelementid LIKE '50' THEN sag.value END AS '50',
CASE WHEN sag.dataelementid LIKE '53' THEN sag.value END AS '53',
CASE WHEN sag.dataelementid LIKE '54' THEN sag.value END AS '54',
CASE WHEN sag.dataelementid LIKE '55' THEN sag.value END AS '55',
CASE WHEN sag.dataelementid LIKE '56' THEN sag.value END AS '56',
CASE WHEN sag.dataelementid LIKE '57' THEN sag.value END AS '57',
CASE WHEN sag.dataelementid LIKE '58' THEN sag.value END AS '58',
CASE WHEN sag.dataelementid LIKE '59' THEN sag.value END AS '59',
CASE WHEN sag.dataelementid LIKE '60' THEN sag.value END AS '60',
CASE WHEN sag.dataelementid LIKE '61' THEN sag.value END AS '61',
CASE WHEN sag.dataelementid LIKE '62' THEN sag.value END AS '62',
CASE WHEN sag.dataelementid LIKE '64' THEN sag.value END AS '64',
CASE WHEN sag.dataelementid LIKE '65' THEN sag.value END AS '65',
CASE WHEN sag.dataelementid LIKE '66' THEN sag.value END AS '66',
CASE WHEN sag.dataelementid LIKE '78' THEN sag.value END AS '78',
CASE WHEN sag.dataelementid LIKE '80' THEN sag.value END AS '80',
CASE WHEN sag.dataelementid LIKE '82' THEN sag.value END AS '82',
CASE WHEN sag.dataelementid LIKE '84' THEN sag.value END AS '84',
CASE WHEN sag.dataelementid LIKE '86' THEN sag.value END AS '86',
CASE WHEN sag.dataelementid LIKE '88' THEN sag.value END AS '88',
CASE WHEN sag.dataelementid LIKE '90' THEN sag.value END AS '90',
CASE WHEN sag.dataelementid LIKE '112' THEN sag.value END AS '112',
CASE WHEN sag.dataelementid LIKE '113' THEN sag.value END AS '113',
CASE WHEN sag.dataelementid LIKE '114' THEN sag.value END AS '114',
CASE WHEN sag.dataelementid LIKE '115' THEN sag.value END AS '115',
CASE WHEN sag.dataelementid LIKE '116' THEN sag.value END AS '116',
CASE WHEN sag.dataelementid LIKE '117' THEN sag.value END AS '117',
CASE WHEN sag.dataelementid LIKE '118' THEN sag.value END AS '118',
CASE WHEN sag.dataelementid LIKE '119' THEN sag.value END AS '119',
CASE WHEN sag.dataelementid LIKE '120' THEN sag.value END AS '120',
CASE WHEN sag.dataelementid LIKE '122' THEN sag.value END AS '122',
CASE WHEN sag.dataelementid LIKE '123' THEN sag.value END AS '123',
CASE WHEN sag.dataelementid LIKE '124' THEN sag.value END AS '124',
CASE WHEN sag.dataelementid LIKE '125' THEN sag.value END AS '125',
CASE WHEN sag.dataelementid LIKE '126' THEN sag.value END AS '126',
CASE WHEN sag.dataelementid LIKE '63' THEN sag.value END AS '631'


FROM
(
	SELECT asd.organisationunitid,asd.name,asd1.time, asd1.dataelementid, SUM(asd1.value) AS 'value'
	FROM
	(
	SELECT os.organisationunitid,os.idlevel4,os.idlevel3,og.name AS 'gname',ou.name,os.level
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	WHERE og.name IN ('CSD','LSD','Port','District','Silo')
	AND os.idlevel3 IN (
		SELECT organisationunitid FROM organisationunit ou WHERE ou.name LIKE 'Division Dhaka'
		)
		
	#And os.organisationunitid=1518
	)asd


	LEFT JOIN
	(
	#current week
	SELECT asd.organisationunitid,CASE WHEN asd.check LIKE 'Paddy' THEN CONCAT(asd.dataelementid,'p')
	WHEN asd.check LIKE 'Rice' THEN CONCAT(asd.dataelementid,'r')
	WHEN asd.check LIKE 'Wheat' THEN CONCAT(asd.dataelementid,'w') END AS 'dataelementid'
	,asd.value,asd.time
	FROM
	(
	SELECT asd.organisationunitid,asd.dataelementid,asd.value,asd.time, CASE WHEN asd1.value LIKE 'Rice' THEN 'Rice' 
	WHEN asd1.value LIKE 'Wheat' THEN 'Wheat'
	WHEN asd1.value LIKE 'Paddy' THEN 'Paddy' END AS 'check',asd.psi1,asd1.psi2
	FROM
		(
		SELECT organisationunitid, dataelementid, pdv.value,'cw' AS 'time',psi.programstageinstanceid AS 'psi1'
		FROM patientdatavalue pdv
		INNER JOIN programstageinstance psi ON psi.programstageinstanceid=pdv.programstageinstanceid
		WHERE psi.executiondate BETWEEN '2014-01-06' AND '2014-01-12'		
		AND dataelementid IN (106,109,111)
		)asd	
		INNER JOIN 
		(
		SELECT organisationunitid, dataelementid, pdv.value,'cw' AS 'time',psi.programstageinstanceid  AS 'psi2'
		FROM patientdatavalue pdv
		INNER JOIN programstageinstance psi ON psi.programstageinstanceid=pdv.programstageinstanceid
		WHERE psi.executiondate BETWEEN '2014-01-06' AND '2014-01-12'
		AND dataelementid IN (106,109,111)
		)asd1
		ON asd.organisationunitid=asd1.organisationunitid
		WHERE asd.psi1 =asd1.psi2
	)asd	
	WHERE asd.check IS NOT NULL
	AND asd.dataelementid !=106

	UNION

	#current week		
	SELECT dv.sourceid,dv.dataelementid,dv.value,'cw' AS 'time'
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (6,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,25,28,30,31,32,33,34,35,36,37,
			38,39,40,41,42,43,44,50,53,54,55,56,57,58,59,60,61,62,64,65,66,78,80,82,84,86,88,
			90,112,113,114,115,116,117,118,119,120,122,123,124,125,126,63,127,128,129)
	AND dv.categoryoptioncomboid IN (1)
	AND p.startdate BETWEEN '2014-01-06' AND '2014-01-12'
			
/*
	UNION

	#last week
	SELECT dv.sourceid,dv.dataelementid,dv.value,'lw' AS 'time'
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (127,128,129)
	AND dv.categoryoptioncomboid IN (1)
	AND CASE WHEN WEEK('2014-01-06') =1 THEN WEEK(p.startdate) =  WEEK(CONCAT((YEAR('2014-01-06')-1),'-',12,'-',30 ) ) 
			AND YEAR(p.startdate) = YEAR('2014-01-06')-1
		WHEN WEEK('2014-01-06') > 1 THEN WEEK(p.startdate) =  WEEK('2014-01-06')-1
			AND YEAR(p.startdate) = YEAR('2014-01-06') END */
	)asd1

	ON asd.organisationunitid=asd1.organisationunitid
	GROUP BY asd.name,asd1.dataelementid,asd1.time
)sag	
)sag1
GROUP BY sag1.name