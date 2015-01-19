SELECT sag6.circle,sag6.mon_number,sag6.6224_1_fin_yr,sag6.6224_1_fin_yr_ela_prop_mini,sag6.mini_per_dur,sag6.mini_per_prog,sag6.mini_per_las_yr,
	sag6.6225_1_fin_yr,sag6.6225_1_fin_yr_ela_prop_vase,sag6.vase_per_dur,sag6.vase_per_prog,sag6.vase_per_las_yr,sag6.ster_tot_ste,sag6.ster_per_dur,
	sag6.ster_per_prog,sag6.ster_per_las_yr,sag6.mini_anual,sag6.mini_prop,sag6.mini_diff,sag6.vase_anual,sag6.vase_prop,sag6.vase_diff,sag6.ster_anual,
	sag6.ster_diff,sag6.vase_marks,sag6.ster_marks,sag6.mini_rank,sag6.vase_rank,sag6.ster_rank

FROM
(
SELECT sag5.circle,sag5.mon_number,sag5.6224_1_fin_yr,sag5.6224_1_fin_yr_ela_prop_mini,sag5.mini_per_dur,sag5.mini_per_prog,sag5.mini_per_las_yr,
	sag5.6225_1_fin_yr,sag5.6225_1_fin_yr_ela_prop_vase,sag5.vase_per_dur,sag5.vase_per_prog,sag5.vase_per_las_yr,sag5.ster_tot_ste,sag5.ster_per_dur,
	sag5.ster_per_prog,sag5.ster_per_las_yr,sag5.mini_anual,sag5.mini_prop,sag5.mini_diff,sag5.vase_anual,sag5.vase_prop,sag5.vase_diff,sag5.ster_anual,
	sag5.ster_diff,sag5.mini_rank,sag5.vase_rank,sag5.vase_marks,sag5.ster_marks,
	
       @ster_rank := CASE WHEN @ster_anual = sag5.ster_anual THEN @ster_rn ELSE @ster_rn+1 END 'ster_rank',
       @ster_anual := sag5.ster_anual,
       @ster_rn := @ster_rank

FROM
(
SELECT sag4.circle,sag4.mon_number,sag4.6224_1_fin_yr,sag4.6224_1_fin_yr_ela_prop_mini,sag4.mini_per_dur,sag4.mini_per_prog,sag4.mini_per_las_yr,
	sag4.6225_1_fin_yr,sag4.6225_1_fin_yr_ela_prop_vase,sag4.vase_per_dur,sag4.vase_per_prog,sag4.vase_per_las_yr,sag4.ster_tot_ste,sag4.ster_per_dur,
	sag4.ster_per_prog,sag4.ster_per_las_yr,sag4.mini_anual,sag4.mini_prop,sag4.mini_diff,sag4.vase_anual,sag4.vase_prop,sag4.vase_diff,sag4.ster_anual,
	sag4.ster_diff,sag4.mini_rank,sag4.vase_marks,sag4.ster_marks,
 
       @vase_rank := CASE WHEN @vase_prop = sag4.vase_prop THEN @vase_rn ELSE @vase_rn+1 END 'vase_rank',
       @vase_prop := sag4.vase_prop,
       @vase_rn := @vase_rank,
       @ster_anual:=NULL, 
       @ster_rn:=0
   

FROM
(
SELECT sag3.circle,sag3.mon_number,sag3.6224_1_fin_yr,sag3.6224_1_fin_yr_ela_prop_mini,sag3.mini_per_dur,sag3.mini_per_prog,sag3.mini_per_las_yr,
	sag3.6225_1_fin_yr,sag3.6225_1_fin_yr_ela_prop_vase,sag3.vase_per_dur,sag3.vase_per_prog,sag3.vase_per_las_yr,sag3.ster_tot_ste,sag3.ster_per_dur,
	sag3.ster_per_prog,sag3.ster_per_las_yr,sag3.mini_anual,sag3.mini_prop,sag3.mini_diff,sag3.vase_anual,sag3.vase_prop,sag3.vase_diff,sag3.ster_anual,
	sag3.ster_diff,
	CASE WHEN sag3.vase_prop<=60 THEN 0.0
             WHEN sag3.vase_prop>=60 THEN ROUND(sag3.vase_prop*5/100,1) END AS 'vase_marks',
        
        CASE WHEN sag3.ster_anual<=60 THEN 0.0
             WHEN sag3.ster_anual>=60 THEN ROUND(sag3.ster_anual*8/100,1) END AS 'ster_marks',
 
       @mini_rank := CASE WHEN @mini_prop = sag3.mini_prop THEN @mini_rn ELSE @mini_rn+1 END 'mini_rank',
       @mini_prop := sag3.mini_prop,
       @mini_rn := @mini_rank,
       @vase_prop:=NULL, 
       @vase_rn:=0
            
FROM
(
SELECT sag2.circle,sag2.mon_number,sag2.6224_1_fin_yr,sag2.6224_1_fin_yr_ela_prop_mini,sag2.mini_per_dur,sag2.mini_per_prog,sag2.mini_per_las_yr,
	sag2.6225_1_fin_yr,sag2.6225_1_fin_yr_ela_prop_vase,sag2.vase_per_dur,sag2.vase_per_prog,sag2.vase_per_las_yr,sag2.ster_tot_ste,sag2.ster_per_dur,
	sag2.ster_per_prog,sag2.ster_per_las_yr,
	
	@mini_prop:=NULL, @mini_rn:=0,

IFNULL(ROUND((sag2.mini_per_prog/sag2.6224_1_fin_yr)*100,0),0) AS 'mini_anual',
IFNULL(ROUND((sag2.mini_per_prog/sag2.6224_1_fin_yr_ela_prop_mini)*100*sag2.mon_number,0),0) AS 'mini_prop',
sag2.mini_per_dur-sag2.mini_per_las_yr AS 'mini_diff',

IFNULL(ROUND((sag2.vase_per_prog/sag2.6225_1_fin_yr)*100,0),0) AS 'vase_anual',
IFNULL(ROUND((sag2.vase_per_prog/6225_1_fin_yr_ela_prop_vase)*100*sag2.mon_number,0),0) AS 'vase_prop',
sag2.vase_per_dur-sag2.vase_per_las_yr AS 'vase_diff',

IFNULL(ROUND((sag2.ster_per_prog/sag2.ster_tot_ste)*100,0),0) AS 'ster_anual',
sag2.ster_per_dur-sag2.ster_per_las_yr AS 'ster_diff'





FROM

(
SELECT sag1.circle,sag1.mon_number,
SUM(IFNULL(sag1.6224_1_fin_yr,0)) AS '6224_1_fin_yr',
ROUND((SUM(IFNULL(sag1.6224_1_fin_yr,0))/12)*sag1.mon_number,0) AS '6224_1_fin_yr_ela_prop_mini',
SUM(IFNULL(sag1.1273_1_cur_mon,0))+SUM(IFNULL(sag1.54_1_cur_mon,0))+SUM(IFNULL(sag1.1271_1_cur_mon,0))+SUM(IFNULL(sag1.1272_1_cur_mon,0)) AS 'mini_per_dur',
SUM(IFNULL(sag1.1273_1_prog,0))+SUM(IFNULL(sag1.54_1_prog,0))+SUM(IFNULL(sag1.1271_1_prog,0))+SUM(IFNULL(sag1.1272_1_prog,0)) AS 'mini_per_prog',
SUM(IFNULL(sag1.1273_1_las_yr,0))+SUM(IFNULL(sag1.54_1_las_yr,0))+SUM(IFNULL(sag1.1271_1_las_yr,0))+SUM(IFNULL(sag1.1272_1_las_yr,0)) AS 'mini_per_las_yr',

SUM(IFNULL(sag1.6225_1_fin_yr,0)) AS '6225_1_fin_yr',
ROUND((SUM(IFNULL(sag1.6225_1_fin_yr,0))/12)*sag1.mon_number,0) AS '6225_1_fin_yr_ela_prop_vase',
SUM(IFNULL(sag1.2795_1_cur_mon,0))+SUM(IFNULL(sag1.2796_1_cur_mon,0))+SUM(IFNULL(sag1.2797_1_cur_mon,0))+SUM(IFNULL(sag1.2798_1_cur_mon,0))
+SUM(IFNULL(sag1.6220_1_cur_mon,0))+SUM(IFNULL(sag1.6221_1_cur_mon,0))+SUM(IFNULL(sag1.2810_1_cur_mon,0))+SUM(IFNULL(sag1.2811_1_cur_mon,0)) AS 'vase_per_dur',
SUM(IFNULL(sag1.2795_1_prog,0))+SUM(IFNULL(sag1.2796_1_prog,0))+SUM(IFNULL(sag1.2797_1_prog,0))+SUM(IFNULL(sag1.2798_1_prog,0))
+SUM(IFNULL(sag1.6220_1_prog,0))+SUM(IFNULL(sag1.6221_1_prog,0))+SUM(IFNULL(sag1.2810_1_prog,0))+SUM(IFNULL(sag1.2811_1_prog,0)) AS 'vase_per_prog',
SUM(IFNULL(sag1.2795_1_las_yr,0))+SUM(IFNULL(sag1.2796_1_las_yr,0))+SUM(IFNULL(sag1.2797_1_las_yr,0))+SUM(IFNULL(sag1.2798_1_las_yr,0))
+SUM(IFNULL(sag1.6220_1_las_yr,0))+SUM(IFNULL(sag1.6221_1_las_yr,0))+SUM(IFNULL(sag1.2810_1_las_yr,0))+SUM(IFNULL(sag1.2811_1_las_yr,0)) AS 'vase_per_las_yr',



SUM(IFNULL(sag1.1269_1_cur_mon,0))+SUM(IFNULL(sag1.52_1_cur_mon,0))+SUM(IFNULL(sag1.1277_1_cur_mon,0))+SUM(IFNULL(sag1.56_1_cur_mon,0))
+SUM(IFNULL(sag1.1267_1_cur_mon,0))+SUM(IFNULL(sag1.1271_1_cur_mon,0))+SUM(IFNULL(sag1.1275_1_cur_mon,0))+SUM(IFNULL(sag1.1276_1_cur_mon,0)) 
+ SUM(IFNULL(sag1.2810_1_cur_mon,0))+SUM(IFNULL(sag1.2796_1_cur_mon,0))+SUM(IFNULL(sag1.2811_1_cur_mon,0))+SUM(IFNULL(sag1.2798_1_cur_mon,0))
+ SUM(IFNULL(sag1.1273_1_cur_mon,0))+SUM(IFNULL(sag1.54_1_cur_mon,0))+SUM(IFNULL(sag1.2795_1_cur_mon,0))+SUM(IFNULL(sag1.2797_1_cur_mon,0))
+ SUM(IFNULL(sag1.6220_1_cur_mon,0))+ SUM(IFNULL(sag1.6221_1_cur_mon,0))+SUM(IFNULL(sag1.1272_1_cur_mon,0))+SUM(IFNULL(sag1.1268_1_cur_mon,0))AS 'ster_tot_ste',
SUM(IFNULL(sag1.2633_7_cur_mon,0))+SUM(IFNULL(sag1.2633_8_cur_mon,0))+SUM(IFNULL(sag1.2634_7_cur_mon,0))+SUM(IFNULL(sag1.2634_8_cur_mon,0)) AS 'ster_per_dur',
SUM(IFNULL(sag1.2633_7_prog,0))+SUM(IFNULL(sag1.2633_8_prog,0))+SUM(IFNULL(sag1.2634_7_prog,0))+SUM(IFNULL(sag1.2634_8_prog,0)) AS 'ster_per_prog',
SUM(IFNULL(sag1.2633_7_las_yr,0))+SUM(IFNULL(sag1.2633_8_las_yr,0))+SUM(IFNULL(sag1.2634_7_las_yr,0))+SUM(IFNULL(sag1.2634_8_las_yr,0)) AS 'ster_per_las_yr'

FROM
(
SELECT sag.circle,
CASE WHEN sag.dataelementid=6224 AND sag.categoryoptioncomboid=1 AND sag.time='fin_yr' THEN sag.value END AS '6224_1_fin_yr',
CASE WHEN sag.dataelementid=6225 AND sag.categoryoptioncomboid=1 AND sag.time='fin_yr' THEN sag.value END AS '6225_1_fin_yr',

CASE WHEN sag.dataelementid=1273 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '1273_1_cur_mon',
CASE WHEN sag.dataelementid=54 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '54_1_cur_mon',
CASE WHEN sag.dataelementid=1271 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '1271_1_cur_mon',
CASE WHEN sag.dataelementid=1272 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '1272_1_cur_mon',
CASE WHEN sag.dataelementid=2795 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '2795_1_cur_mon',
CASE WHEN sag.dataelementid=2796 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '2796_1_cur_mon',
CASE WHEN sag.dataelementid=2797 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '2797_1_cur_mon',
CASE WHEN sag.dataelementid=2798 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '2798_1_cur_mon',
CASE WHEN sag.dataelementid=6220 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '6220_1_cur_mon',
CASE WHEN sag.dataelementid=6221 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '6221_1_cur_mon',
CASE WHEN sag.dataelementid=2810 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '2810_1_cur_mon',
CASE WHEN sag.dataelementid=2811 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '2811_1_cur_mon',
CASE WHEN sag.dataelementid=2633 AND sag.categoryoptioncomboid=7 AND sag.time='cur_mon' THEN sag.value END AS '2633_7_cur_mon',
CASE WHEN sag.dataelementid=2633 AND sag.categoryoptioncomboid=8 AND sag.time='cur_mon' THEN sag.value END AS '2633_8_cur_mon',
CASE WHEN sag.dataelementid=2634 AND sag.categoryoptioncomboid=7 AND sag.time='cur_mon' THEN sag.value END AS '2634_7_cur_mon',
CASE WHEN sag.dataelementid=2634 AND sag.categoryoptioncomboid=8 AND sag.time='cur_mon' THEN sag.value END AS '2634_8_cur_mon',
CASE WHEN sag.dataelementid=1269 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '1269_1_cur_mon',
CASE WHEN sag.dataelementid=52 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '52_1_cur_mon',
CASE WHEN sag.dataelementid=1277 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '1277_1_cur_mon',
CASE WHEN sag.dataelementid=56 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '56_1_cur_mon',
CASE WHEN sag.dataelementid=1267 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '1267_1_cur_mon',
CASE WHEN sag.dataelementid=1275 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '1275_1_cur_mon',
CASE WHEN sag.dataelementid=1268 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '1268_1_cur_mon',
CASE WHEN sag.dataelementid=1276 AND sag.categoryoptioncomboid=1 AND sag.time='cur_mon' THEN sag.value END AS '1276_1_cur_mon',

CASE WHEN sag.dataelementid=1273 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '1273_1_prog',
CASE WHEN sag.dataelementid=54 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '54_1_prog',
CASE WHEN sag.dataelementid=1271 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '1271_1_prog',
CASE WHEN sag.dataelementid=1272 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '1272_1_prog',
CASE WHEN sag.dataelementid=2795 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '2795_1_prog',
CASE WHEN sag.dataelementid=2796 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '2796_1_prog',
CASE WHEN sag.dataelementid=2797 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '2797_1_prog',
CASE WHEN sag.dataelementid=2798 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '2798_1_prog',
CASE WHEN sag.dataelementid=6220 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '6220_1_prog',
CASE WHEN sag.dataelementid=6221 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '6221_1_prog',
CASE WHEN sag.dataelementid=2810 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '2810_1_prog',
CASE WHEN sag.dataelementid=2811 AND sag.categoryoptioncomboid=1 AND sag.time='prog' THEN sag.value END AS '2811_1_prog',
CASE WHEN sag.dataelementid=2633 AND sag.categoryoptioncomboid=7 AND sag.time='prog' THEN sag.value END AS '2633_7_prog',
CASE WHEN sag.dataelementid=2633 AND sag.categoryoptioncomboid=8 AND sag.time='prog' THEN sag.value END AS '2633_8_prog',
CASE WHEN sag.dataelementid=2634 AND sag.categoryoptioncomboid=7 AND sag.time='prog' THEN sag.value END AS '2634_7_prog',
CASE WHEN sag.dataelementid=2634 AND sag.categoryoptioncomboid=8 AND sag.time='prog' THEN sag.value END AS '2634_8_prog',

CASE WHEN sag.dataelementid=1273 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '1273_1_las_yr',
CASE WHEN sag.dataelementid=54 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '54_1_las_yr',
CASE WHEN sag.dataelementid=1271 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '1271_1_las_yr',
CASE WHEN sag.dataelementid=1272 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '1272_1_las_yr',
CASE WHEN sag.dataelementid=2795 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '2795_1_las_yr',
CASE WHEN sag.dataelementid=2796 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '2796_1_las_yr',
CASE WHEN sag.dataelementid=2797 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '2797_1_las_yr',
CASE WHEN sag.dataelementid=2798 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '2798_1_las_yr',
CASE WHEN sag.dataelementid=6220 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '6220_1_las_yr',
CASE WHEN sag.dataelementid=6221 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '6221_1_las_yr',
CASE WHEN sag.dataelementid=2810 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '2810_1_las_yr',
CASE WHEN sag.dataelementid=2811 AND sag.categoryoptioncomboid=1 AND sag.time='las_yr' THEN sag.value END AS '2811_1_las_yr',
CASE WHEN sag.dataelementid=2633 AND sag.categoryoptioncomboid=7 AND sag.time='las_yr' THEN sag.value END AS '2633_7_las_yr',
CASE WHEN sag.dataelementid=2633 AND sag.categoryoptioncomboid=8 AND sag.time='las_yr' THEN sag.value END AS '2633_8_las_yr',
CASE WHEN sag.dataelementid=2634 AND sag.categoryoptioncomboid=7 AND sag.time='las_yr' THEN sag.value END AS '2634_7_las_yr',
CASE WHEN sag.dataelementid=2634 AND sag.categoryoptioncomboid=8 AND sag.time='las_yr' THEN sag.value END AS '2634_8_las_yr',

CASE WHEN MONTH('2013-10-01') BETWEEN 1 AND 3 THEN MONTH('2013-10-01')+9 
     WHEN MONTH('2013-10-01') BETWEEN 4 AND 12 THEN MONTH('2013-10-01')-3 END AS 'mon_number'


FROM
(
	#Financial_Year
	SELECT asd.circle,asd.gname,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(IFNULL(asd1.value,0)) AS 'value','fin_yr' AS 'time'
	FROM
	(
		SELECT ou2.organisationunitid,ou.name AS 'circle',ou1.name AS 'district',ou2.name AS 'unit_name',og.name AS 'gname'
		FROM orgunitgroupmembers ogm 
		INNER JOIN orgunitgroup og ON og.orgunitgroupid=ogm.orgunitgroupid
		INNER JOIN _orgunitstructure os ON os.organisationunitid=ogm.organisationunitid
		INNER JOIN organisationunit ou ON ou.organisationunitid=os.idlevel3
		INNER JOIN organisationunit ou1 ON ou1.organisationunitid=os.idlevel4
		INNER JOIN organisationunit ou2 ON ou2.organisationunitid=os.organisationunitid
		WHERE og.name IN ('Rural Group')
		AND (ou.name LIKE "All Circles" OR "All Circles" LIKE 'All Circles')
		

	)asd

	LEFT JOIN 

	(
		SELECT dv.sourceid,dv.dataelementid,dv.categoryoptioncomboid,dv.value,p.startdate
		FROM datavalue dv 
		INNER JOIN period p ON p.periodid=dv.periodid
		WHERE dv.dataelementid IN (6224,6225)
		AND dv.categoryoptioncomboid IN (1)
		AND CASE WHEN MONTH('2013-10-01') BETWEEN 4 AND 12 
				THEN p.startdate BETWEEN CONCAT(YEAR('2013-10-01'),'-04-01') AND CONCAT(YEAR('2013-10-01')+1,'-03-31')
				
			WHEN  MONTH('2013-10-01') BETWEEN 1 AND 3 	
				THEN p.startdate BETWEEN CONCAT(YEAR('2013-10-01')-1,'-04-01') AND CONCAT(YEAR('2013-10-01'),'-03-31')
			END
		AND periodtypeid = 10
	)asd1

	ON asd.organisationunitid=asd1.sourceid
	GROUP BY asd.circle,asd1.dataelementid
	
UNION


	#Current_Month
	SELECT asd.circle,asd.gname,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(IFNULL(asd1.value,0)) AS 'value','cur_mon' AS 'time'
	FROM
	(
		SELECT ou2.organisationunitid,ou.name AS 'circle',ou1.name AS 'district',ou2.name AS 'unit_name',og.name AS 'gname'
		FROM orgunitgroupmembers ogm 
		INNER JOIN orgunitgroup og ON og.orgunitgroupid=ogm.orgunitgroupid
		INNER JOIN _orgunitstructure os ON os.organisationunitid=ogm.organisationunitid
		INNER JOIN organisationunit ou ON ou.organisationunitid=os.idlevel3
		INNER JOIN organisationunit ou1 ON ou1.organisationunitid=os.idlevel4
		INNER JOIN organisationunit ou2 ON ou2.organisationunitid=os.organisationunitid
		WHERE og.name IN ('Corporation Group','DH Group', 'GH Group', 'WH Group', 'MCL Group','MCH Group', 'Cantonment Group', 'SDH 100 Group', 'SDH 50 Group', 'RH Group', 'PHC Group', 'SC')
		AND (ou.name LIKE "All Circles" OR "All Circles" LIKE 'All Circles')
		

	)asd

	LEFT JOIN 

	(
		SELECT dv.sourceid,dv.dataelementid,dv.categoryoptioncomboid,dv.value,p.startdate
		FROM datavalue dv 
		INNER JOIN period p ON p.periodid=dv.periodid
		WHERE dv.dataelementid IN (1273,54,1271,1272,2795,2796,2797,2798,6220,6221,2810,2811,2633,2633,2634,2634,
					   1269,52,1277,56,1267,1275,1268,1276)
		AND dv.categoryoptioncomboid IN (1,7,8)
		AND MONTH(p.startdate)=MONTH('2013-10-01')
		AND YEAR(p.startdate)=YEAR('2013-01-01')
		AND periodtypeid = 3
	)asd1

	ON asd.organisationunitid=asd1.sourceid
	GROUP BY asd.circle,asd1.dataelementid
	
	
UNION
	
	#Progressive
	SELECT asd.circle,asd.gname,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(IFNULL(asd1.value,0)) AS 'value','prog' AS 'time'
	FROM
	(
		SELECT ou2.organisationunitid,ou.name AS 'circle',ou1.name AS 'district',ou2.name AS 'unit_name',og.name AS 'gname'
		FROM orgunitgroupmembers ogm 
		INNER JOIN orgunitgroup og ON og.orgunitgroupid=ogm.orgunitgroupid
		INNER JOIN _orgunitstructure os ON os.organisationunitid=ogm.organisationunitid
		INNER JOIN organisationunit ou ON ou.organisationunitid=os.idlevel3
		INNER JOIN organisationunit ou1 ON ou1.organisationunitid=os.idlevel4
		INNER JOIN organisationunit ou2 ON ou2.organisationunitid=os.organisationunitid
		WHERE og.name IN ('Corporation Group','DH Group', 'GH Group', 'WH Group', 'MCL Group','MCH Group', 'Cantonment Group', 'SDH 100 Group', 'SDH 50 Group', 'RH Group', 'PHC Group', 'SC')
		AND (ou.name LIKE "All Circles" OR "All Circles" LIKE 'All Circles')
		

	)asd

	LEFT JOIN 

	(
		SELECT dv.sourceid,dv.dataelementid,dv.categoryoptioncomboid,dv.value,p.startdate
		FROM datavalue dv 
		INNER JOIN period p ON p.periodid=dv.periodid
		WHERE dv.dataelementid IN (1273,54,1271,1272,2795,2796,2797,2798,6220,6221,2810,2811,2633,2634)
		AND dv.categoryoptioncomboid IN (1,7,8)
		AND CASE WHEN MONTH('2013-10-01') BETWEEN 4 AND 12 
			    THEN YEAR(p.startdate) = YEAR('2013-10-01')-1
				AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2013-10-01')
			WHEN  MONTH('2013-10-01') BETWEEN 1 AND 3     
			THEN p.startdate BETWEEN CONCAT(YEAR('2013-10-01')-2,'-',04,'-',01) AND CONCAT(YEAR('2013-10-01')-1,'-',MONTH('2013-10-01'),'-',DAY('2013-10-01'))
			END   
		AND periodtypeid = 3
	)asd1

	ON asd.organisationunitid=asd1.sourceid
	GROUP BY asd.circle,asd1.dataelementid


UNION

	
	#Last_Year
	SELECT asd.circle,asd.gname,asd1.dataelementid,asd1.categoryoptioncomboid,SUM(IFNULL(asd1.value,0)) AS 'value','las_yr' AS 'time'
	FROM
	(
		SELECT ou2.organisationunitid,ou.name AS 'circle',ou1.name AS 'district',ou2.name AS 'unit_name',og.name AS 'gname'
		FROM orgunitgroupmembers ogm 
		INNER JOIN orgunitgroup og ON og.orgunitgroupid=ogm.orgunitgroupid
		INNER JOIN _orgunitstructure os ON os.organisationunitid=ogm.organisationunitid
		INNER JOIN organisationunit ou ON ou.organisationunitid=os.idlevel3
		INNER JOIN organisationunit ou1 ON ou1.organisationunitid=os.idlevel4
		INNER JOIN organisationunit ou2 ON ou2.organisationunitid=os.organisationunitid
		WHERE og.name IN ('Corporation Group','DH Group', 'GH Group', 'WH Group', 'MCL Group','MCH Group', 'Cantonment Group', 'SDH 100 Group', 'SDH 50 Group', 'RH Group', 'PHC Group', 'SC')
		AND (ou.name LIKE "All Circles" OR "All Circles" LIKE 'All Circles')
		

	)asd

	LEFT JOIN 

	(
		SELECT dv.sourceid,dv.dataelementid,dv.categoryoptioncomboid,dv.value,p.startdate
		FROM datavalue dv 
		INNER JOIN period p ON p.periodid=dv.periodid
		WHERE dv.dataelementid IN (1273,54,1271,1272.1,2795,2796,2797,2798,6220,6221,2810,2811,2633,2634)
		AND dv.categoryoptioncomboid IN (1)
		AND CASE WHEN MONTH('2013-10-01') BETWEEN 4 AND 12 
			    THEN YEAR(p.startdate) = YEAR('2013-10-01')-1
				AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2013-10-01')
			WHEN  MONTH('2013-10-01') BETWEEN 1 AND 3     
			THEN p.startdate BETWEEN CONCAT(YEAR('2013-10-01')-2,'-',04,'-',01) AND CONCAT(YEAR('2013-10-01')-1,'-',MONTH('2013-10-01'),'-',DAY('2013-10-01'))
			END    
		AND periodtypeid = 3
	)asd1

	ON asd.organisationunitid=asd1.sourceid
	GROUP BY asd.circle,asd1.dataelementid
)sag
)sag1

GROUP BY sag1.circle 
)sag2
)sag3 
ORDER BY sag3.mini_prop DESC
)sag4
ORDER BY sag4.vase_prop DESC
)sag5
ORDER BY sag5.ster_anual DESC
)sag6
ORDER BY sag6.circle