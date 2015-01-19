SELECT sag1.fname, 
IFNULL(sag1.'Total_No_Available',0) AS 'Total_No_Available',
IFNULL(sag1.'6478',0) AS '6478'
FROM
(
SELECT gname,fname,Circle,District,ivt_name,
CASE WHEN ivt_name='C.T. Scan' AND DE='t_avail' THEN VALUE END AS 'Total_No_Available',
CASE WHEN ivt_name='C.T. Scan' AND DE='6478' THEN VALUE END AS '6478'

FROM
(
	SELECT * FROM 	
		(
			SELECT ogm.organisationunitid AS 'ou',og.name AS 'gname',ou.name AS 'fname',os.level,ou1.name AS 'Circle',ou2.name AS 'District'
			FROM orgunitgroupmembers ogm
			INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
			INNER JOIN organisationunit ou ON ou.organisationunitid = ogm.organisationunitid
			INNER JOIN _orgunitstructure os ON os.organisationunitid = ou.organisationunitid
			INNER JOIN organisationunit ou1 ON ou1.organisationunitid = os.idlevel3
			INNER JOIN organisationunit ou2 ON ou2.organisationunitid = os.idlevel4
			WHERE og.name IN ('Hospital Group')
		)asd

	LEFT JOIN 

		(
		SELECT c.organisationunitid,it.name AS 'ivt_name',c.inventorytypeid,c.DE,c.value 
		FROM
		(
			SELECT ei.organisationunitid,ei.inventorytypeid,'t_avail' AS 'DE',COUNT(ei.inventorytypeid) AS 'value'
			FROM equipmentinstance ei
			GROUP BY ei.inventorytypeid,ei.organisationunitid

			
			UNION

			SELECT b.organisationunitid,b.inventorytypeid,IFNULL(a.tname,0) AS 'DE' ,IFNULL(a.value,0) AS 'value'
			FROM
			(
			SELECT edv.equipmentinstanceid,edv.dataelementid AS 'DE',edv.value,
			CASE WHEN edv.dataelementid= 6478 THEN '6478'
			
			END AS 'tname'
			FROM equipmentdatavalue edv
			WHERE edv.dataelementid IN (6478)
			)a
			RIGHT JOIN
			(
			SELECT ei.equipmentinstanceid,ei.organisationunitid,ei.inventorytypeid
			FROM equipmentinstance ei
			)b
			ON a.equipmentinstanceid=b.equipmentinstanceid
		)c	

		RIGHT JOIN inventorytype it ON it.inventorytypeid=c.inventorytypeid

		)asd1
		ON asd.ou = asd1.organisationunitid
)sag
)sag1