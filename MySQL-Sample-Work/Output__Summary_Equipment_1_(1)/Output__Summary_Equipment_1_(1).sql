SELECT sag1.fname, 
SUM(IFNULL(sag1.Total_C_T_Scan,0)) AS 'Total_C_T_Scan',
SUM(IFNULL(sag1.6478_C_T_Scan,0)) AS '6478_C_T_Scan',
SUM(IFNULL(sag1.Total_300MA_X_ray_machine,0)) AS 'Total_300MA_X_ray_machine',
SUM(IFNULL(sag1.6478_300MA_X_ray_machine,0)) AS '6478_300MA_X_ray_machine',
SUM(IFNULL(sag1.Total_500MA_X_ray_machine_with_CR_System,0)) AS 'Total_500MA_X_ray_machine_with_CR_System',
SUM(IFNULL(sag1.6478_500MA_X_ray_machine_with_CR_System,0)) AS '6478_500MA_X_ray_machine_with_CR_System',
SUM(IFNULL(sag1.Total_100M_A_X_ray_machine,0)) AS 'Total_100M_A_X_ray_machine',
SUM(IFNULL(sag1.6478_100M_A_X_ray_machine,0)) AS '6478_100M_A_X_ray_machine',
SUM(IFNULL(sag1.Total_Dental_X_ray_machine,0)) AS 'Total_Dental_X_ray_machine',
SUM(IFNULL(sag1.6478_Dental_X_ray_machine,0)) AS '6478_Dental_X_ray_machine',
SUM(IFNULL(sag1.Total_Color_Doppler,0)) AS 'Total_Color_Doppler',
SUM(IFNULL(sag1.6478_Color_Doppler,0)) AS '6478_Color_Doppler',
SUM(IFNULL(sag1.Total_Mobile_C_Arm,0)) AS 'Total_Mobile_C_Arm',
SUM(IFNULL(sag1.6478_Mobile_C_Arm,0)) AS '6478_Mobile_C_Arm',
SUM(IFNULL(sag1.Total_4_Multipara_Monitors_with_one_central_work_Station,0)) AS 'Total_4_Multipara_Monitors_with_one_central_work_Station',
SUM(IFNULL(sag1.6478_4_Multipara_Monitors_with_one_central_work_Station,0)) AS '6478_4_Multipara_Monitors_with_one_central_work_Station',
SUM(IFNULL(sag1.Total_6_Multipara_Monitors_with_one_central_work_Station,0)) AS 'Total_6_Multipara_Monitors_with_one_central_work_Station',
SUM(IFNULL(sag1.6478_6_Multipara_Monitors_with_one_central_work_Station,0)) AS '6478_6_Multipara_Monitors_with_one_central_work_Station',
SUM(IFNULL(sag1.Total_External_Defibrillator_with_ECG_Monitor,0)) AS 'Total_External_Defibrillator_with_ECG_Monitor',
SUM(IFNULL(sag1.6478_External_Defibrillator_with_ECG_Monitor,0)) AS '6478_External_Defibrillator_with_ECG_Monitor',
SUM(IFNULL(sag1.Total_Hydraulic_operation_table,0)) AS 'Total_Hydraulic_operation_table',
SUM(IFNULL(sag1.6478_Hydraulic_operation_table,0)) AS '6478_Hydraulic_operation_table',
SUM(IFNULL(sag1.Total_Boyles_Machine,0)) AS 'Total_Boyles_Machine',
SUM(IFNULL(sag1.6478_Boyles_Machine,0)) AS '6478_Boyles_Machine',
SUM(IFNULL(sag1.Total_Pulse_oxymeter,0)) AS 'Total_Pulse_oxymeter',
SUM(IFNULL(sag1.6478_Pulse_oxymeter,0)) AS '6478_Pulse_oxymeter',
SUM(IFNULL(sag1.Total_Ventilator,0)) AS 'Total_Ventilator',
SUM(IFNULL(sag1.6478_Ventilator,0)) AS '6478_Ventilator',
SUM(IFNULL(sag1.Total_Semiautoanalyser,0)) AS 'Total_Semiautoanalyser',
SUM(IFNULL(sag1.6478_Semiautoanalyser,0)) AS '6478_Semiautoanalyser',
SUM(IFNULL(sag1.Total_Cell_counter,0)) AS 'Total_Cell_counter',
SUM(IFNULL(sag1.6478_Cell_counter,0)) AS '6478_Cell_counter',
SUM(IFNULL(sag1.Total_Cautry,0)) AS 'Total_Cautry',
SUM(IFNULL(sag1.6478_Cautry,0)) AS '6478_Cautry',
SUM(IFNULL(sag1.Total_Infant_warmer,0)) AS 'Total_Infant_warmer',
SUM(IFNULL(sag1.6478_Infant_warmer,0)) AS '6478_Infant_warmer',
SUM(IFNULL(sag1.Total_Phototherapy_unit,0)) AS 'Total_Phototherapy_unit',
SUM(IFNULL(sag1.6478_Phototherapy_unit,0)) AS '6478_Phototherapy_unit',
SUM(IFNULL(sag1.Total_Dental_unit,0)) AS 'Total_Dental_unit',
SUM(IFNULL(sag1.6478__Dental_unit,0)) AS '6478__Dental_unit',
SUM(IFNULL(sag1.Total_Dental_lab,0)) AS 'Total_Dental_lab',
SUM(IFNULL(sag1.6478_Dental_lab,0)) AS '6478_Dental_lab',
SUM(IFNULL(sag1.Total_Sonography,0)) AS 'Total_Sonography',
SUM(IFNULL(sag1.6478_Sonography,0)) AS '6478_Sonography',
SUM(IFNULL(sag1.Total_ECG_Machine,0)) AS 'Total_ECG_Machine',
SUM(IFNULL(sag1.6478__ECG_Machine,0)) AS '6478__ECG_Machine',
SUM(IFNULL(sag1.Total_Horizontal_autoclave_2_drum,0)) AS 'Total_Horizontal_autoclave_2_drum',
SUM(IFNULL(sag1.6478_Horizontal_autoclave_2_drum,0)) AS '6478_Horizontal_autoclave_2_drum',
SUM(IFNULL(sag1.Total_Horizontal_autoclave_11_drum,0)) AS 'Total_Horizontal_autoclave_11_drum',
SUM(IFNULL(sag1.6478__Horizontal_autoclave_11_drum,0)) AS '6478__Horizontal_autoclave_11_drum',
SUM(IFNULL(sag1.Total_Mobile_shadowless_lamp,0)) AS 'Total_Mobile_shadowless_lamp',
SUM(IFNULL(sag1.6478_Mobile_shadowless_lamp,0)) AS '6478_Mobile_shadowless_lamp',
SUM(IFNULL(sag1.Total_Ceiling_mounted_Shadowless_lamp,0)) AS 'Total_Ceiling_mounted_Shadowless_lamp',
SUM(IFNULL(sag1.6478_Ceiling_mounted_Shadowless_lamp,0)) AS '6478_Ceiling_mounted_Shadowless_lamp',
SUM(IFNULL(sag1.Total_2_Body_mortuary_cabinet,0)) AS 'Total_2_Body_mortuary_cabinet',
SUM(IFNULL(sag1.6478_2_Body_mortuary_cabinet,0)) AS '6478_2_Body_mortuary_cabinet',
SUM(IFNULL(sag1.Total_4_Body_mortuary_cabinet,0)) AS 'Total_4_Body_mortuary_cabinet',
SUM(IFNULL(sag1.6478_4_Body_mortuary_cabinet,0)) AS '6478_4_Body_mortuary_cabinet',
SUM(IFNULL(sag1.Total_Power_bone_drill,0)) AS 'Total_Power_bone_drill',
SUM(IFNULL(sag1.6478_Power_bone_drill,0)) AS '6478_Power_bone_drill',
SUM(IFNULL(sag1.Total_Pneumatic_tourniqet,0)) AS 'Total_Pneumatic_tourniqet',
SUM(IFNULL(sag1.6478_Pneumatic_tourniqet,0)) AS '6478_Pneumatic_tourniqet',
SUM(IFNULL(sag1.Total_Multipara_monitor_for_neonates,0)) AS 'Total_Multipara_monitor_for_neonates',
SUM(IFNULL(sag1.6478_Multipara_monitor_for_neonates,0)) AS '6478_Multipara_monitor_for_neonates'


FROM
(
SELECT gname,fname,Circle,District,ivt_name,
CASE WHEN ivt_name='C.T. Scan' AND DE='t_avail' THEN VALUE END AS 'Total_C_T_Scan',
CASE WHEN ivt_name='C.T. Scan' AND DE='6478' THEN VALUE END AS '6478_C_T_Scan',
CASE WHEN ivt_name='300M.A. X ray machine' AND DE='t_avail' THEN VALUE END AS 'Total_300MA_X_ray_machine',
CASE WHEN ivt_name='300M.A. X ray machine' AND DE='6478' THEN VALUE END AS '6478_300MA_X_ray_machine',
CASE WHEN ivt_name='500MA_X_ray_machine_with_CR_System' AND DE='t_avail' THEN VALUE END AS 'Total_500MA_X_ray_machine_with_CR_System',
CASE WHEN ivt_name='500MA_X_ray_machine_with_CR_System' AND DE='6478' THEN VALUE END AS '6478_500MA_X_ray_machine_with_CR_System',
CASE WHEN ivt_name='100M.A. X ray machine' AND DE='t_avail' THEN VALUE END AS 'Total_100M_A_X_ray_machine',
CASE WHEN ivt_name='100M.A. X ray machine' AND DE='6478' THEN VALUE END AS '6478_100M_A_X_ray_machine',
CASE WHEN ivt_name='Dental X ray machine' AND DE='t_avail' THEN VALUE END AS 'Total_Dental_X_ray_machine',
CASE WHEN ivt_name='Dental X ray machine' AND DE='6478' THEN VALUE END AS '6478_Dental_X_ray_machine',
CASE WHEN ivt_name='Color Doppler' AND DE='t_avail' THEN VALUE END AS 'Total_Color_Doppler',
CASE WHEN ivt_name='Color Doppler' AND DE='6478' THEN VALUE END AS '6478_Color_Doppler',
CASE WHEN ivt_name='Mobile C Arm' AND DE='t_avail' THEN VALUE END AS 'Total_Mobile_C_Arm',
CASE WHEN ivt_name='Mobile C Arm' AND DE='6478' THEN VALUE END AS '6478_Mobile_C_Arm',
CASE WHEN ivt_name='4 Multipara Monitors with one central work Station' AND DE='t_avail' THEN VALUE END AS 'Total_4_Multipara_Monitors_with_one_central_work_Station',
CASE WHEN ivt_name='4 Multipara Monitors with one central work Station' AND DE='6478' THEN VALUE END AS '6478_4_Multipara_Monitors_with_one_central_work_Station',
CASE WHEN ivt_name='6 Multipara Monitors with one central work Station' AND DE='t_avail' THEN VALUE END AS 'Total_6_Multipara_Monitors_with_one_central_work_Station',
CASE WHEN ivt_name='6 Multipara Monitors with one central work Station' AND DE='6478' THEN VALUE END AS '6478_6_Multipara_Monitors_with_one_central_work_Station',
CASE WHEN ivt_name='External Defibrillator with ECG Monitor' AND DE='t_avail' THEN VALUE END AS 'Total_External_Defibrillator_with_ECG_Monitor',
CASE WHEN ivt_name='External Defibrillator with ECG Monitor' AND DE='6478' THEN VALUE END AS '6478_External_Defibrillator_with_ECG_Monitor',
CASE WHEN ivt_name='Hydraulic operation table' AND DE='t_avail' THEN VALUE END AS 'Total_Hydraulic_operation_table',
CASE WHEN ivt_name='Hydraulic operation table' AND DE='6478' THEN VALUE END AS '6478_Hydraulic_operation_table',
CASE WHEN ivt_name='Boyles Machine / Anesthesia work station' AND DE='t_avail' THEN VALUE END AS 'Total_Boyles_Machine',
CASE WHEN ivt_name='Boyles Machine / Anesthesia work station' AND DE='6478' THEN VALUE END AS '6478_Boyles_Machine',
CASE WHEN ivt_name='Pulse oxymeter' AND DE='t_avail' THEN VALUE END AS 'Total_Pulse_oxymeter',
CASE WHEN ivt_name='Pulse oxymeter' AND DE='6478' THEN VALUE END AS '6478_Pulse_oxymeter',
CASE WHEN ivt_name='Ventilator' AND DE='t_avail' THEN VALUE END AS 'Total_Ventilator',
CASE WHEN ivt_name='Ventilator' AND DE='6478' THEN VALUE END AS '6478_Ventilator',
CASE WHEN ivt_name='Semiautoanalyser' AND DE='t_avail' THEN VALUE END AS 'Total_Semiautoanalyser',
CASE WHEN ivt_name='Semiautoanalyser' AND DE='6478' THEN VALUE END AS '6478_Semiautoanalyser',
CASE WHEN ivt_name='Cell counter' AND DE='t_avail' THEN VALUE END AS 'Total_Cell_counter',
CASE WHEN ivt_name='Cell counter' AND DE='6478' THEN VALUE END AS '6478_Cell_counter',
CASE WHEN ivt_name='Cautry' AND DE='t_avail' THEN VALUE END AS 'Total_Cautry',
CASE WHEN ivt_name='Cautry' AND DE='6478' THEN VALUE END AS '6478_Cautry',
CASE WHEN ivt_name='Infant warmer' AND DE='t_avail' THEN VALUE END AS 'Total_Infant_warmer',
CASE WHEN ivt_name='Infant warmer' AND DE='6478' THEN VALUE END AS '6478_Infant_warmer',
CASE WHEN ivt_name='Phototherapy unit' AND DE='t_avail' THEN VALUE END AS 'Total_Phototherapy_unit',
CASE WHEN ivt_name='Phototherapy unit' AND DE='6478' THEN VALUE END AS '6478_Phototherapy_unit',
CASE WHEN ivt_name='Dental unit' AND DE='t_avail' THEN VALUE END AS 'Total_Dental_unit',
CASE WHEN ivt_name='Dental unit' AND DE='6478' THEN VALUE END AS '6478__Dental_unit',
CASE WHEN ivt_name='Dental lab' AND DE='t_avail' THEN VALUE END AS 'Total_Dental_lab',
CASE WHEN ivt_name='Dental lab' AND DE='6478' THEN VALUE END AS '6478_Dental_lab',
CASE WHEN ivt_name='Sonography' AND DE='t_avail' THEN VALUE END AS 'Total_Sonography',
CASE WHEN ivt_name='Sonography' AND DE='6478' THEN VALUE END AS '6478_Sonography',
CASE WHEN ivt_name='ECG Machine' AND DE='t_avail' THEN VALUE END AS 'Total_ECG_Machine',
CASE WHEN ivt_name='ECG Machine' AND DE='6478' THEN VALUE END AS '6478__ECG_Machine',
CASE WHEN ivt_name='Horizontal autoclave 2 drum' AND DE='t_avail' THEN VALUE END AS 'Total_Horizontal_autoclave_2_drum',
CASE WHEN ivt_name='Horizontal autoclave 2 drum' AND DE='6478' THEN VALUE END AS '6478_Horizontal_autoclave_2_drum',
CASE WHEN ivt_name='Horizontal autoclave 11 drum' AND DE='t_avail' THEN VALUE END AS 'Total_Horizontal_autoclave_11_drum',
CASE WHEN ivt_name='Horizontal autoclave 11 drum' AND DE='6478' THEN VALUE END AS '6478__Horizontal_autoclave_11_drum',
CASE WHEN ivt_name='Mobile shadowless lamp' AND DE='t_avail' THEN VALUE END AS 'Total_Mobile_shadowless_lamp',
CASE WHEN ivt_name='Mobile shadowless lamp' AND DE='6478' THEN VALUE END AS '6478_Mobile_shadowless_lamp',
CASE WHEN ivt_name='Ceiling mounted Shadowless lamp' AND DE='t_avail' THEN VALUE END AS 'Total_Ceiling_mounted_Shadowless_lamp',
CASE WHEN ivt_name='Ceiling mounted Shadowless lamp' AND DE='6478' THEN VALUE END AS '6478_Ceiling_mounted_Shadowless_lamp',
CASE WHEN ivt_name='2 Body mortuary cabinet' AND DE='t_avail' THEN VALUE END AS 'Total_2_Body_mortuary_cabinet',
CASE WHEN ivt_name='2 Body mortuary cabinet' AND DE='6478' THEN VALUE END AS '6478_2_Body_mortuary_cabinet',
CASE WHEN ivt_name='4 Body Mortuary cabinet' AND DE='t_avail' THEN VALUE END AS 'Total_4_Body_mortuary_cabinet',
CASE WHEN ivt_name='4 Body Mortuary cabinet' AND DE='6478' THEN VALUE END AS '6478_4_Body_mortuary_cabinet',
CASE WHEN ivt_name='Power bone drill' AND DE='t_avail' THEN VALUE END AS 'Total_Power_bone_drill',
CASE WHEN ivt_name='Power bone drill' AND DE='6478' THEN VALUE END AS '6478_Power_bone_drill',
CASE WHEN ivt_name='Pneumatic tourniqet' AND DE='t_avail' THEN VALUE END AS 'Total_Pneumatic_tourniqet',
CASE WHEN ivt_name='Pneumatic tourniqet' AND DE='6478' THEN VALUE END AS '6478_Pneumatic_tourniqet',
CASE WHEN ivt_name='Multipara monitor for neonates' AND DE='t_avail' THEN VALUE END AS 'Total_Multipara_monitor_for_neonates',
CASE WHEN ivt_name='Multipara monitor for neonates' AND DE='6478' THEN VALUE END AS '6478_Multipara_monitor_for_neonates'




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

GROUP BY sag1.fname
