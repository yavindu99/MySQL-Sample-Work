SELECT sag3.name,sag3.kit, ntok_lm,
CONCAT(yoed_lm,'-',moed_lm,'-',doed_lm) AS 'oed_lm', 
npk_lm,
CONCAT(yped_lm,'-',mped_lm,'-',dped_lm) AS 'yped_lm',
nrk_cm,
CONCAT(yred_cm,'-',mred_cm,'-',dred_cm) AS 'red_cm',
tst_cm,ted_cm,ntok_cm,
CONCAT(yoed_cm,'-',moed_cm,'-',doed_cm) AS 'oed_cm',
npk_cm,
CONCAT(yped_cm,'-',mped_cm,'-',dped_cm) AS 'ped_cm'

FROM
(
SELECT sag2.name,
CASE WHEN sag2.kit='f' THEN 'Dengue IgM Mac'
WHEN sag2.kit='s' THEN 'NS-1 Ag Test Kit'
WHEN sag2.kit='t'THEN 'Chikungunya IgM' END AS 'kit', 
SUM(IFNULL(ntok_lm,0)) AS 'ntok_lm',
SUM(YEAR(oed_lm)) AS 'yoed_lm',
SUM(MONTH(oed_lm)) AS 'moed_lm',
SUM(DAY(oed_lm)) AS 'doed_lm',

SUM(IFNULL(npk_lm,0)) AS 'npk_lm',
SUM(YEAR(ped_lm)) AS 'yped_lm',
SUM(MONTH(ped_lm)) AS 'mped_lm',
SUM(DAY(ped_lm)) AS 'dped_lm',

SUM(IFNULL(nrk_cm,0)) AS 'nrk_cm',
SUM(YEAR(red_cm)) AS 'yred_cm',
SUM(MONTH(red_cm)) AS 'mred_cm',
SUM(DAY(red_cm)) AS 'dred_cm',

SUM(IFNULL(tst_cm,0)) AS 'tst_cm',
SUM(IFNULL(ted_cm,0)) AS 'ted_cm',

SUM(IFNULL(ntok_cm,0)) AS 'ntok_cm',
SUM(YEAR(oed_cm)) AS 'yoed_cm',
SUM(MONTH(oed_cm)) AS 'moed_cm',
SUM(DAY(oed_cm)) AS 'doed_cm',

SUM(IFNULL(npk_cm,0)) AS 'npk_cm',
SUM(YEAR(ped_cm)) AS 'yped_cm',
SUM(MONTH(ped_cm)) AS 'mped_cm',
SUM(DAY(ped_cm)) AS 'dped_cm'

FROM
(
	SELECT sag1.idlevel3,sag1.name,sag1.kit,
	CASE WHEN sag1.time LIKE 'last_mn' AND sag1.dataelementid IN (7561,7562,7563) THEN sag1.value END AS 'ntok_lm',
	CASE WHEN sag1.time LIKE 'last_mn' AND sag1.dataelementid IN (7564,7565,7566) THEN sag1.value END AS 'oed_lm',
	CASE WHEN sag1.time LIKE 'last_mn' AND sag1.dataelementid IN (7567,7568,7569) THEN sag1.value END AS 'npk_lm',
	CASE WHEN sag1.time LIKE 'last_mn' AND sag1.dataelementid IN (7570,7571,7572) THEN sag1.value END AS 'ped_lm',

	CASE WHEN sag1.time LIKE 'cur_mn' AND sag1.dataelementid IN (7573,7574,7575) THEN sag1.value END AS 'nrk_cm',
	CASE WHEN sag1.time LIKE 'cur_mn' AND sag1.dataelementid IN (7576,7577,7578) THEN sag1.value END AS 'red_cm',
	CASE WHEN sag1.time LIKE 'cur_mn' AND sag1.dataelementid IN (7579,7580,7581) THEN sag1.value END AS 'tst_cm',
	CASE WHEN sag1.time LIKE 'cur_mn' AND sag1.dataelementid IN (7582,7583,7584) THEN sag1.value END AS 'ted_cm',

	CASE WHEN sag1.time LIKE 'cur_mn' AND sag1.dataelementid IN (7561,7562,7563) THEN sag1.value END AS 'ntok_cm',
	CASE WHEN sag1.time LIKE 'cur_mn' AND sag1.dataelementid IN (7564,7565,7566) THEN sag1.value END AS 'oed_cm',
	CASE WHEN sag1.time LIKE 'cur_mn' AND sag1.dataelementid IN (7567,7568,7569) THEN sag1.value END AS 'npk_cm',
	CASE WHEN sag1.time LIKE 'cur_mn' AND sag1.dataelementid IN (7570,7571,7572) THEN sag1.value END AS 'ped_cm'

	FROM
	(
		SELECT sag.idlevel3,sag.name,sag.time, sag.dataelementid,sag.value,
		CASE WHEN sag.dataelementid IN (7561,7564,7567,7570,7573,7576,7579,7582) THEN 'f'
		WHEN sag.dataelementid IN (7562,7565,7568,7571,7574,7577,7580,7583) THEN 's'
		WHEN sag.dataelementid IN (7563,7566,7569,7572,7575,7578,7581,7584) THEN 't'
		END AS 'Kit'
		FROM 
		(
			#current month
			SELECT asd.idlevel3,asd.name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value, 'cur_mn' AS 'time'
			FROM
			(
			SELECT os.idlevel3,os.organisationunitid,og.name AS 'gname',ou.name,os.level
			FROM orgunitgroupmembers ogm
			INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
			INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
			INNER JOIN organisationunit ou ON ou.organisationunitid = os.organisationunitid
			WHERE og.name IN ('SSH')	
			AND os.idlevel3 IN (
					SELECT organisationunitid
					FROM organisationunit 
					WHERE NAME LIKE 'LUDHIANA District'
					)
			)asd

			LEFT JOIN

			(
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN (7561,7564,7567,7570,7573,7576,7579,7582,7562,7565,7568,7571,7574,7577,7580,7583,7563,7566,7569,7572,7575,7578,7581,7584)
			AND dv.categoryoptioncomboid IN (1)
			AND MONTH(p.startdate) = MONTH('2013-09-01')
			AND YEAR(p.startdate) = YEAR('2013-09-01')
			AND periodtypeid = 3
			)asd1
			ON asd.organisationunitid = asd1.sourceid

		UNION

			#Prevoius month
			SELECT asd.idlevel3,asd.name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value, 'last_mn' AS 'time'
			FROM
			(
			SELECT os.idlevel3,os.organisationunitid,og.name AS 'gname',ou.name,os.level
			FROM orgunitgroupmembers ogm
			INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
			INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
			INNER JOIN organisationunit ou ON ou.organisationunitid = os.organisationunitid
			WHERE og.name IN ('SSH')	
			AND os.idlevel3 IN (
					SELECT organisationunitid
					FROM organisationunit 
					WHERE NAME LIKE 'LUDHIANA District'
					)
			)asd

			LEFT JOIN

			(
			SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid
			FROM datavalue dv
			INNER JOIN period p ON p.periodid=dv.periodid 
			WHERE dv.dataelementid IN (7561,7564,7567,7570,7562,7565,7568,7571,7563,7566,7569,7572)
			AND dv.categoryoptioncomboid IN (1)
			AND MONTH(p.startdate) = MONTH('2013-09-01')-1
			AND YEAR(p.startdate) = YEAR('2013-09-01')
			AND periodtypeid = 3
			)asd1
			ON asd.organisationunitid = asd1.sourceid

		)sag
	)sag1
)sag2
GROUP BY sag2.name,sag2.kit
)sag3