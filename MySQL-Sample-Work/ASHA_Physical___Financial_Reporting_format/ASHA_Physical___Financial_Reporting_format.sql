	
SELECT sag1.name,
SUM(IFNULL(sag1.7010_curr_mn,0)) AS '7010_curr_mn',
SUM(IFNULL(sag1.7011_curr_mn,0)) AS '7011_curr_mn',
SUM(IFNULL(sag1.5779_curr_mn,0)) AS '5779_curr_mn',
SUM(IFNULL(sag1.5780_curr_mn,0)) AS '5780_curr_mn',
SUM(IFNULL(sag1.5781_curr_mn,0)) AS '5781_curr_mn',
SUM(IFNULL(sag1.5782_curr_mn,0)) AS '5782_curr_mn',
SUM(IFNULL(sag1.5804_curr_mn,0)) AS '5804_curr_mn',
SUM(IFNULL(sag1.5805_curr_mn,0)) AS '5805_curr_mn',
SUM(IFNULL(sag1.5806_curr_mn,0)) AS '5806_curr_mn',
SUM(IFNULL(sag1.7309_curr_mn,0)) AS '7309_curr_mn',
SUM(IFNULL(sag1.7310_curr_mn,0)) AS '7310_curr_mn',
SUM(IFNULL(sag1.7311_curr_mn,0)) AS '7311_curr_mn',
SUM(IFNULL(sag1.5910_curr_mn,0)) AS '5910_curr_mn',
SUM(IFNULL(sag1.5911_curr_mn,0)) AS '5911_curr_mn',
SUM(IFNULL(sag1.5783_curr_mn,0)) AS '5783_curr_mn',
SUM(IFNULL(sag1.5784_curr_mn,0)) AS '5784_curr_mn',
SUM(IFNULL(sag1.5785_curr_mn,0)) AS '5785_curr_mn',
SUM(IFNULL(sag1.5786_curr_mn,0)) AS '5786_curr_mn',
SUM(IFNULL(sag1.5787_curr_mn,0)) AS '5787_curr_mn',
SUM(IFNULL(sag1.5788_curr_mn,0)) AS '5788_curr_mn',
SUM(IFNULL(sag1.5912_curr_mn,0)) AS '5912_curr_mn',
SUM(IFNULL(sag1.5913_curr_mn,0)) AS '5913_curr_mn',
SUM(IFNULL(sag1.5789_curr_mn,0)) AS '5789_curr_mn',
SUM(IFNULL(sag1.5790_curr_mn,0)) AS '5790_curr_mn',
SUM(IFNULL(sag1.5914_curr_mn,0)) AS '5914_curr_mn',
SUM(IFNULL(sag1.5915_curr_mn,0)) AS '5915_curr_mn',
SUM(IFNULL(sag1.7055_curr_mn,0)) AS '7055_curr_mn',
SUM(IFNULL(sag1.7056_curr_mn,0)) AS '7056_curr_mn',
SUM(IFNULL(sag1.7012_curr_mn,0)) AS '7012_curr_mn',
SUM(IFNULL(sag1.7013_curr_mn,0)) AS '7013_curr_mn',
SUM(IFNULL(sag1.7014_curr_mn,0)) AS '7014_curr_mn',
SUM(IFNULL(sag1.7015_curr_mn,0)) AS '7015_curr_mn',
SUM(IFNULL(sag1.7016_curr_mn,0)) AS '7016_curr_mn',
SUM(IFNULL(sag1.7017_curr_mn,0)) AS '7017_curr_mn',
SUM(IFNULL(sag1.7018_curr_mn,0)) AS '7018_curr_mn',
SUM(IFNULL(sag1.7019_curr_mn,0)) AS '7019_curr_mn',
SUM(IFNULL(sag1.7020_curr_mn,0)) AS '7020_curr_mn',
SUM(IFNULL(sag1.7021_curr_mn,0)) AS '7021_curr_mn',
SUM(IFNULL(sag1.7022_curr_mn,0)) AS '7022_curr_mn',
SUM(IFNULL(sag1.7023_curr_mn,0)) AS '7023_curr_mn',
SUM(IFNULL(sag1.7024_curr_mn,0)) AS '7024_curr_mn',
SUM(IFNULL(sag1.7025_curr_mn,0)) AS '7025_curr_mn',
SUM(IFNULL(sag1.7026_curr_mn,0)) AS '7026_curr_mn',
SUM(IFNULL(sag1.94_curr_mn,0)) AS '94_curr_mn',
SUM(IFNULL(sag1.5906_curr_mn,0)) AS '5906_curr_mn',
SUM(IFNULL(sag1.5907_curr_mn,0)) AS '5907_curr_mn',
SUM(IFNULL(sag1.5908_curr_mn,0)) AS '5908_curr_mn',
SUM(IFNULL(sag1.5909_curr_mn,0)) AS '5909_curr_mn',
SUM(IFNULL(sag1.5765_curr_mn,0)) AS '5765_curr_mn',
SUM(IFNULL(sag1.5766_curr_mn,0)) AS '5766_curr_mn',
SUM(IFNULL(sag1.5767_curr_mn,0)) AS '5767_curr_mn',
SUM(IFNULL(sag1.7027_curr_mn,0)) AS '7027_curr_mn',
SUM(IFNULL(sag1.7028_curr_mn,0)) AS '7028_curr_mn',
SUM(IFNULL(sag1.7029_curr_mn,0)) AS '7029_curr_mn',
SUM(IFNULL(sag1.7030_curr_mn,0)) AS '7030_curr_mn',
SUM(IFNULL(sag1.7031_curr_mn,0)) AS '7031_curr_mn',
SUM(IFNULL(sag1.7032_curr_mn,0)) AS '7032_curr_mn',
SUM(IFNULL(sag1.7033_curr_mn,0)) AS '7033_curr_mn',
SUM(IFNULL(sag1.7034_curr_mn,0)) AS '7034_curr_mn',
SUM(IFNULL(sag1.7035_curr_mn,0)) AS '7035_curr_mn',
					

SUM(IFNULL(sag1.5779_up_to_pre_mon,0)) AS '5779_up_to_pre_mon',
SUM(IFNULL(sag1.5780_up_to_pre_mon,0)) AS '5780_up_to_pre_mon',
SUM(IFNULL(sag1.5781_up_to_pre_mon,0)) AS '5781_up_to_pre_mon',
SUM(IFNULL(sag1.5782_up_to_pre_mon,0)) AS '5782_up_to_pre_mon',
SUM(IFNULL(sag1.5804_up_to_pre_mon,0)) AS '5804_up_to_pre_mon',
SUM(IFNULL(sag1.5805_up_to_pre_mon,0)) AS '5805_up_to_pre_mon',
SUM(IFNULL(sag1.5806_up_to_pre_mon,0)) AS '5806_up_to_pre_mon',
SUM(IFNULL(sag1.7309_up_to_pre_mon,0)) AS '7309_up_to_pre_mon',
SUM(IFNULL(sag1.7310_up_to_pre_mon,0)) AS '7310_up_to_pre_mon',
SUM(IFNULL(sag1.7311_up_to_pre_mon,0)) AS '7311_up_to_pre_mon',
SUM(IFNULL(sag1.5910_up_to_pre_mon,0)) AS '5910_up_to_pre_mon',
SUM(IFNULL(sag1.5911_up_to_pre_mon,0)) AS '5911_up_to_pre_mon',
SUM(IFNULL(sag1.5783_up_to_pre_mon,0)) AS '5783_up_to_pre_mon',
SUM(IFNULL(sag1.5784_up_to_pre_mon,0)) AS '5784_up_to_pre_mon',
SUM(IFNULL(sag1.5785_up_to_pre_mon,0)) AS '5785_up_to_pre_mon',
SUM(IFNULL(sag1.5786_up_to_pre_mon,0)) AS '5786_up_to_pre_mon',
SUM(IFNULL(sag1.5787_up_to_pre_mon,0)) AS '5787_up_to_pre_mon',
SUM(IFNULL(sag1.5788_up_to_pre_mon,0)) AS '5788_up_to_pre_mon',
SUM(IFNULL(sag1.5912_up_to_pre_mon,0)) AS '5912_up_to_pre_mon',
SUM(IFNULL(sag1.5913_up_to_pre_mon,0)) AS '5913_up_to_pre_mon',
SUM(IFNULL(sag1.5789_up_to_pre_mon,0)) AS '5789_up_to_pre_mon',
SUM(IFNULL(sag1.5790_up_to_pre_mon,0)) AS '5790_up_to_pre_mon',
SUM(IFNULL(sag1.5914_up_to_pre_mon,0)) AS '5914_up_to_pre_mon',
SUM(IFNULL(sag1.5915_up_to_pre_mon,0)) AS '5915_up_to_pre_mon',
SUM(IFNULL(sag1.7055_up_to_pre_mon,0)) AS '7055_up_to_pre_mon',
SUM(IFNULL(sag1.7056_up_to_pre_mon,0)) AS '7056_up_to_pre_mon',
SUM(IFNULL(sag1.7012_up_to_pre_mon,0)) AS '7012_up_to_pre_mon',
SUM(IFNULL(sag1.7013_up_to_pre_mon,0)) AS '7013_up_to_pre_mon',
SUM(IFNULL(sag1.7014_up_to_pre_mon,0)) AS '7014_up_to_pre_mon',
SUM(IFNULL(sag1.7015_up_to_pre_mon,0)) AS '7015_up_to_pre_mon',
SUM(IFNULL(sag1.7016_up_to_pre_mon,0)) AS '7016_up_to_pre_mon',
SUM(IFNULL(sag1.7017_up_to_pre_mon,0)) AS '7017_up_to_pre_mon',
SUM(IFNULL(sag1.7018_up_to_pre_mon,0)) AS '7018_up_to_pre_mon',
SUM(IFNULL(sag1.7019_up_to_pre_mon,0)) AS '7019_up_to_pre_mon',
SUM(IFNULL(sag1.7020_up_to_pre_mon,0)) AS '7020_up_to_pre_mon',
SUM(IFNULL(sag1.7021_up_to_pre_mon,0)) AS '7021_up_to_pre_mon',
SUM(IFNULL(sag1.7022_up_to_pre_mon,0)) AS '7022_up_to_pre_mon',
SUM(IFNULL(sag1.7023_up_to_pre_mon,0)) AS '7023_up_to_pre_mon',
SUM(IFNULL(sag1.7024_up_to_pre_mon,0)) AS '7024_up_to_pre_mon',
SUM(IFNULL(sag1.7025_up_to_pre_mon,0)) AS '7025_up_to_pre_mon',
SUM(IFNULL(sag1.7026_up_to_pre_mon,0)) AS '7026_up_to_pre_mon',
SUM(IFNULL(sag1.94_up_to_pre_mon,0)) AS '94_up_to_pre_mon',
SUM(IFNULL(sag1.5906_up_to_pre_mon,0)) AS '5906_up_to_pre_mon',
SUM(IFNULL(sag1.5907_up_to_pre_mon,0)) AS '5907_up_to_pre_mon',
SUM(IFNULL(sag1.5908_up_to_pre_mon,0)) AS '5908_up_to_pre_mon',
SUM(IFNULL(sag1.5909_up_to_pre_mon,0)) AS '5909_up_to_pre_mon',
SUM(IFNULL(sag1.5765_up_to_pre_mon,0)) AS '5765_up_to_pre_mon',
SUM(IFNULL(sag1.5766_up_to_pre_mon,0)) AS '5766_up_to_pre_mon',
SUM(IFNULL(sag1.5767_up_to_pre_mon,0)) AS '5767_up_to_pre_mon',
SUM(IFNULL(sag1.7027_up_to_pre_mon,0)) AS '7027_up_to_pre_mon',
SUM(IFNULL(sag1.7028_up_to_pre_mon,0)) AS '7028_up_to_pre_mon',
SUM(IFNULL(sag1.7029_up_to_pre_mon,0)) AS '7029_up_to_pre_mon',
SUM(IFNULL(sag1.7030_up_to_pre_mon,0)) AS '7030_up_to_pre_mon',
SUM(IFNULL(sag1.7031_up_to_pre_mon,0)) AS '7031_up_to_pre_mon',
SUM(IFNULL(sag1.7032_up_to_pre_mon,0)) AS '7032_up_to_pre_mon',
SUM(IFNULL(sag1.7033_up_to_pre_mon,0)) AS '7033_up_to_pre_mon',
SUM(IFNULL(sag1.7034_up_to_pre_mon,0)) AS '7034_up_to_pre_mon',
SUM(IFNULL(sag1.7035_up_to_pre_mon,0)) AS '7035_up_to_pre_mon',
					

SUM(IFNULL(sag1.5779_up_to_curr_mon,0)) AS '5779_up_to_curr_mon',
SUM(IFNULL(sag1.5780_up_to_curr_mon,0)) AS '5780_up_to_curr_mon',
SUM(IFNULL(sag1.5781_up_to_curr_mon,0)) AS '5781_up_to_curr_mon',
SUM(IFNULL(sag1.5782_up_to_curr_mon,0)) AS '5782_up_to_curr_mon',
SUM(IFNULL(sag1.5804_up_to_curr_mon,0)) AS '5804_up_to_curr_mon',
SUM(IFNULL(sag1.5805_up_to_curr_mon,0)) AS '5805_up_to_curr_mon',
SUM(IFNULL(sag1.5806_up_to_curr_mon,0)) AS '5806_up_to_curr_mon',
SUM(IFNULL(sag1.7309_up_to_curr_mon,0)) AS '7309_up_to_curr_mon',
SUM(IFNULL(sag1.7310_up_to_curr_mon,0)) AS '7310_up_to_curr_mon',
SUM(IFNULL(sag1.7311_up_to_curr_mon,0)) AS '7311_up_to_curr_mon',
SUM(IFNULL(sag1.5910_up_to_curr_mon,0)) AS '5910_up_to_curr_mon',
SUM(IFNULL(sag1.5911_up_to_curr_mon,0)) AS '5911_up_to_curr_mon',
SUM(IFNULL(sag1.5783_up_to_curr_mon,0)) AS '5783_up_to_curr_mon',
SUM(IFNULL(sag1.5784_up_to_curr_mon,0)) AS '5784_up_to_curr_mon',
SUM(IFNULL(sag1.5785_up_to_curr_mon,0)) AS '5785_up_to_curr_mon',
SUM(IFNULL(sag1.5786_up_to_curr_mon,0)) AS '5786_up_to_curr_mon',
SUM(IFNULL(sag1.5787_up_to_curr_mon,0)) AS '5787_up_to_curr_mon',
SUM(IFNULL(sag1.5788_up_to_curr_mon,0)) AS '5788_up_to_curr_mon',
SUM(IFNULL(sag1.5912_up_to_curr_mon,0)) AS '5912_up_to_curr_mon',
SUM(IFNULL(sag1.5913_up_to_curr_mon,0)) AS '5913_up_to_curr_mon',
SUM(IFNULL(sag1.5789_up_to_curr_mon,0)) AS '5789_up_to_curr_mon',
SUM(IFNULL(sag1.5790_up_to_curr_mon,0)) AS '5790_up_to_curr_mon',
SUM(IFNULL(sag1.5914_up_to_curr_mon,0)) AS '5914_up_to_curr_mon',
SUM(IFNULL(sag1.5915_up_to_curr_mon,0)) AS '5915_up_to_curr_mon',
SUM(IFNULL(sag1.7055_up_to_curr_mon,0)) AS '7055_up_to_curr_mon',
SUM(IFNULL(sag1.7056_up_to_curr_mon,0)) AS '7056_up_to_curr_mon',
SUM(IFNULL(sag1.7012_up_to_curr_mon,0)) AS '7012_up_to_curr_mon',
SUM(IFNULL(sag1.7013_up_to_curr_mon,0)) AS '7013_up_to_curr_mon',
SUM(IFNULL(sag1.7014_up_to_curr_mon,0)) AS '7014_up_to_curr_mon',
SUM(IFNULL(sag1.7015_up_to_curr_mon,0)) AS '7015_up_to_curr_mon',
SUM(IFNULL(sag1.7016_up_to_curr_mon,0)) AS '7016_up_to_curr_mon',
SUM(IFNULL(sag1.7017_up_to_curr_mon,0)) AS '7017_up_to_curr_mon',
SUM(IFNULL(sag1.7018_up_to_curr_mon,0)) AS '7018_up_to_curr_mon',
SUM(IFNULL(sag1.7019_up_to_curr_mon,0)) AS '7019_up_to_curr_mon',
SUM(IFNULL(sag1.7020_up_to_curr_mon,0)) AS '7020_up_to_curr_mon',
SUM(IFNULL(sag1.7021_up_to_curr_mon,0)) AS '7021_up_to_curr_mon',
SUM(IFNULL(sag1.7022_up_to_curr_mon,0)) AS '7022_up_to_curr_mon',
SUM(IFNULL(sag1.7023_up_to_curr_mon,0)) AS '7023_up_to_curr_mon',
SUM(IFNULL(sag1.7024_up_to_curr_mon,0)) AS '7024_up_to_curr_mon',
SUM(IFNULL(sag1.7025_up_to_curr_mon,0)) AS '7025_up_to_curr_mon',
SUM(IFNULL(sag1.7026_up_to_curr_mon,0)) AS '7026_up_to_curr_mon',
SUM(IFNULL(sag1.94_up_to_curr_mon,0)) AS '94_up_to_curr_mon',
SUM(IFNULL(sag1.5906_up_to_curr_mon,0)) AS '5906_up_to_curr_mon',
SUM(IFNULL(sag1.5907_up_to_curr_mon,0)) AS '5907_up_to_curr_mon',
SUM(IFNULL(sag1.5908_up_to_curr_mon,0)) AS '5908_up_to_curr_mon',
SUM(IFNULL(sag1.5909_up_to_curr_mon,0)) AS '5909_up_to_curr_mon',
SUM(IFNULL(sag1.5765_up_to_curr_mon,0)) AS '5765_up_to_curr_mon',
SUM(IFNULL(sag1.5766_up_to_curr_mon,0)) AS '5766_up_to_curr_mon',
SUM(IFNULL(sag1.5767_up_to_curr_mon,0)) AS '5767_up_to_curr_mon',
SUM(IFNULL(sag1.7027_up_to_curr_mon,0)) AS '7027_up_to_curr_mon',
SUM(IFNULL(sag1.7028_up_to_curr_mon,0)) AS '7028_up_to_curr_mon',
SUM(IFNULL(sag1.7029_up_to_curr_mon,0)) AS '7029_up_to_curr_mon',
SUM(IFNULL(sag1.7030_up_to_curr_mon,0)) AS '7030_up_to_curr_mon',
SUM(IFNULL(sag1.7031_up_to_curr_mon,0)) AS '7031_up_to_curr_mon',
SUM(IFNULL(sag1.7032_up_to_curr_mon,0)) AS '7032_up_to_curr_mon',
SUM(IFNULL(sag1.7033_up_to_curr_mon,0)) AS '7033_up_to_curr_mon',
SUM(IFNULL(sag1.7034_up_to_curr_mon,0)) AS '7034_up_to_curr_mon',
SUM(IFNULL(sag1.7035_up_to_curr_mon,0)) AS '7035_up_to_curr_mon'
FROM
(	
SELECT sag.name,
CASE WHEN sag.dataelementid=7010 AND sag.time='curr_mn' THEN sag.value END AS '7010_curr_mn',
CASE WHEN sag.dataelementid=7011 AND sag.time='curr_mn' THEN sag.value END AS '7011_curr_mn',
CASE WHEN sag.dataelementid=5779 AND sag.time='curr_mn' THEN sag.value END AS '5779_curr_mn',
CASE WHEN sag.dataelementid=5780 AND sag.time='curr_mn' THEN sag.value END AS '5780_curr_mn',
CASE WHEN sag.dataelementid=5781 AND sag.time='curr_mn' THEN sag.value END AS '5781_curr_mn',
CASE WHEN sag.dataelementid=5782 AND sag.time='curr_mn' THEN sag.value END AS '5782_curr_mn',
CASE WHEN sag.dataelementid=5804 AND sag.time='curr_mn' THEN sag.value END AS '5804_curr_mn',
CASE WHEN sag.dataelementid=5805 AND sag.time='curr_mn' THEN sag.value END AS '5805_curr_mn',
CASE WHEN sag.dataelementid=5806 AND sag.time='curr_mn' THEN sag.value END AS '5806_curr_mn',
CASE WHEN sag.dataelementid=7309 AND sag.time='curr_mn' THEN sag.value END AS '7309_curr_mn',
CASE WHEN sag.dataelementid=7310 AND sag.time='curr_mn' THEN sag.value END AS '7310_curr_mn',
CASE WHEN sag.dataelementid=7311 AND sag.time='curr_mn' THEN sag.value END AS '7311_curr_mn',
CASE WHEN sag.dataelementid=5910 AND sag.time='curr_mn' THEN sag.value END AS '5910_curr_mn',
CASE WHEN sag.dataelementid=5911 AND sag.time='curr_mn' THEN sag.value END AS '5911_curr_mn',
CASE WHEN sag.dataelementid=5783 AND sag.time='curr_mn' THEN sag.value END AS '5783_curr_mn',
CASE WHEN sag.dataelementid=5784 AND sag.time='curr_mn' THEN sag.value END AS '5784_curr_mn',
CASE WHEN sag.dataelementid=5785 AND sag.time='curr_mn' THEN sag.value END AS '5785_curr_mn',
CASE WHEN sag.dataelementid=5786 AND sag.time='curr_mn' THEN sag.value END AS '5786_curr_mn',
CASE WHEN sag.dataelementid=5787 AND sag.time='curr_mn' THEN sag.value END AS '5787_curr_mn',
CASE WHEN sag.dataelementid=5788 AND sag.time='curr_mn' THEN sag.value END AS '5788_curr_mn',
CASE WHEN sag.dataelementid=5912 AND sag.time='curr_mn' THEN sag.value END AS '5912_curr_mn',
CASE WHEN sag.dataelementid=5913 AND sag.time='curr_mn' THEN sag.value END AS '5913_curr_mn',
CASE WHEN sag.dataelementid=5789 AND sag.time='curr_mn' THEN sag.value END AS '5789_curr_mn',
CASE WHEN sag.dataelementid=5790 AND sag.time='curr_mn' THEN sag.value END AS '5790_curr_mn',
CASE WHEN sag.dataelementid=5914 AND sag.time='curr_mn' THEN sag.value END AS '5914_curr_mn',
CASE WHEN sag.dataelementid=5915 AND sag.time='curr_mn' THEN sag.value END AS '5915_curr_mn',
CASE WHEN sag.dataelementid=7055 AND sag.time='curr_mn' THEN sag.value END AS '7055_curr_mn',
CASE WHEN sag.dataelementid=7056 AND sag.time='curr_mn' THEN sag.value END AS '7056_curr_mn',
CASE WHEN sag.dataelementid=7012 AND sag.time='curr_mn' THEN sag.value END AS '7012_curr_mn',
CASE WHEN sag.dataelementid=7013 AND sag.time='curr_mn' THEN sag.value END AS '7013_curr_mn',
CASE WHEN sag.dataelementid=7014 AND sag.time='curr_mn' THEN sag.value END AS '7014_curr_mn',
CASE WHEN sag.dataelementid=7015 AND sag.time='curr_mn' THEN sag.value END AS '7015_curr_mn',
CASE WHEN sag.dataelementid=7016 AND sag.time='curr_mn' THEN sag.value END AS '7016_curr_mn',
CASE WHEN sag.dataelementid=7017 AND sag.time='curr_mn' THEN sag.value END AS '7017_curr_mn',
CASE WHEN sag.dataelementid=7018 AND sag.time='curr_mn' THEN sag.value END AS '7018_curr_mn',
CASE WHEN sag.dataelementid=7019 AND sag.time='curr_mn' THEN sag.value END AS '7019_curr_mn',
CASE WHEN sag.dataelementid=7020 AND sag.time='curr_mn' THEN sag.value END AS '7020_curr_mn',
CASE WHEN sag.dataelementid=7021 AND sag.time='curr_mn' THEN sag.value END AS '7021_curr_mn',
CASE WHEN sag.dataelementid=7022 AND sag.time='curr_mn' THEN sag.value END AS '7022_curr_mn',
CASE WHEN sag.dataelementid=7023 AND sag.time='curr_mn' THEN sag.value END AS '7023_curr_mn',
CASE WHEN sag.dataelementid=7024 AND sag.time='curr_mn' THEN sag.value END AS '7024_curr_mn',
CASE WHEN sag.dataelementid=7025 AND sag.time='curr_mn' THEN sag.value END AS '7025_curr_mn',
CASE WHEN sag.dataelementid=7026 AND sag.time='curr_mn' THEN sag.value END AS '7026_curr_mn',
CASE WHEN sag.dataelementid=94 AND sag.time='curr_mn' THEN sag.value END AS '94_curr_mn',
CASE WHEN sag.dataelementid=5906 AND sag.time='curr_mn' THEN sag.value END AS '5906_curr_mn',
CASE WHEN sag.dataelementid=5907 AND sag.time='curr_mn' THEN sag.value END AS '5907_curr_mn',
CASE WHEN sag.dataelementid=5908 AND sag.time='curr_mn' THEN sag.value END AS '5908_curr_mn',
CASE WHEN sag.dataelementid=5909 AND sag.time='curr_mn' THEN sag.value END AS '5909_curr_mn',
CASE WHEN sag.dataelementid=5765 AND sag.time='curr_mn' THEN sag.value END AS '5765_curr_mn',
CASE WHEN sag.dataelementid=5766 AND sag.time='curr_mn' THEN sag.value END AS '5766_curr_mn',
CASE WHEN sag.dataelementid=5767 AND sag.time='curr_mn' THEN sag.value END AS '5767_curr_mn',
CASE WHEN sag.dataelementid=7027 AND sag.time='curr_mn' THEN sag.value END AS '7027_curr_mn',
CASE WHEN sag.dataelementid=7028 AND sag.time='curr_mn' THEN sag.value END AS '7028_curr_mn',
CASE WHEN sag.dataelementid=7029 AND sag.time='curr_mn' THEN sag.value END AS '7029_curr_mn',
CASE WHEN sag.dataelementid=7030 AND sag.time='curr_mn' THEN sag.value END AS '7030_curr_mn',
CASE WHEN sag.dataelementid=7031 AND sag.time='curr_mn' THEN sag.value END AS '7031_curr_mn',
CASE WHEN sag.dataelementid=7032 AND sag.time='curr_mn' THEN sag.value END AS '7032_curr_mn',
CASE WHEN sag.dataelementid=7033 AND sag.time='curr_mn' THEN sag.value END AS '7033_curr_mn',
CASE WHEN sag.dataelementid=7034 AND sag.time='curr_mn' THEN sag.value END AS '7034_curr_mn',
CASE WHEN sag.dataelementid=7035 AND sag.time='curr_mn' THEN sag.value END AS '7035_curr_mn',


CASE WHEN sag.dataelementid=5779 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5779_up_to_pre_mon',
CASE WHEN sag.dataelementid=5780 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5780_up_to_pre_mon',
CASE WHEN sag.dataelementid=5781 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5781_up_to_pre_mon',
CASE WHEN sag.dataelementid=5782 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5782_up_to_pre_mon',
CASE WHEN sag.dataelementid=5804 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5804_up_to_pre_mon',
CASE WHEN sag.dataelementid=5805 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5805_up_to_pre_mon',
CASE WHEN sag.dataelementid=5806 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5806_up_to_pre_mon',
CASE WHEN sag.dataelementid=7309 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7309_up_to_pre_mon',
CASE WHEN sag.dataelementid=7310 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7310_up_to_pre_mon',
CASE WHEN sag.dataelementid=7311 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7311_up_to_pre_mon',
CASE WHEN sag.dataelementid=5910 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5910_up_to_pre_mon',
CASE WHEN sag.dataelementid=5911 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5911_up_to_pre_mon',
CASE WHEN sag.dataelementid=5783 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5783_up_to_pre_mon',
CASE WHEN sag.dataelementid=5784 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5784_up_to_pre_mon',
CASE WHEN sag.dataelementid=5785 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5785_up_to_pre_mon',
CASE WHEN sag.dataelementid=5786 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5786_up_to_pre_mon',
CASE WHEN sag.dataelementid=5787 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5787_up_to_pre_mon',
CASE WHEN sag.dataelementid=5788 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5788_up_to_pre_mon',
CASE WHEN sag.dataelementid=5912 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5912_up_to_pre_mon',
CASE WHEN sag.dataelementid=5913 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5913_up_to_pre_mon',
CASE WHEN sag.dataelementid=5789 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5789_up_to_pre_mon',
CASE WHEN sag.dataelementid=5790 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5790_up_to_pre_mon',
CASE WHEN sag.dataelementid=5914 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5914_up_to_pre_mon',
CASE WHEN sag.dataelementid=5915 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5915_up_to_pre_mon',
CASE WHEN sag.dataelementid=7055 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7055_up_to_pre_mon',
CASE WHEN sag.dataelementid=7056 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7056_up_to_pre_mon',
CASE WHEN sag.dataelementid=7012 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7012_up_to_pre_mon',
CASE WHEN sag.dataelementid=7013 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7013_up_to_pre_mon',
CASE WHEN sag.dataelementid=7014 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7014_up_to_pre_mon',
CASE WHEN sag.dataelementid=7015 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7015_up_to_pre_mon',
CASE WHEN sag.dataelementid=7016 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7016_up_to_pre_mon',
CASE WHEN sag.dataelementid=7017 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7017_up_to_pre_mon',
CASE WHEN sag.dataelementid=7018 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7018_up_to_pre_mon',
CASE WHEN sag.dataelementid=7019 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7019_up_to_pre_mon',
CASE WHEN sag.dataelementid=7020 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7020_up_to_pre_mon',
CASE WHEN sag.dataelementid=7021 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7021_up_to_pre_mon',
CASE WHEN sag.dataelementid=7022 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7022_up_to_pre_mon',
CASE WHEN sag.dataelementid=7023 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7023_up_to_pre_mon',
CASE WHEN sag.dataelementid=7024 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7024_up_to_pre_mon',
CASE WHEN sag.dataelementid=7025 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7025_up_to_pre_mon',
CASE WHEN sag.dataelementid=7026 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7026_up_to_pre_mon',
CASE WHEN sag.dataelementid=94 AND sag.time='up_to_pre_mon' THEN sag.value END AS '94_up_to_pre_mon',
CASE WHEN sag.dataelementid=5906 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5906_up_to_pre_mon',
CASE WHEN sag.dataelementid=5907 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5907_up_to_pre_mon',
CASE WHEN sag.dataelementid=5908 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5908_up_to_pre_mon',
CASE WHEN sag.dataelementid=5909 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5909_up_to_pre_mon',
CASE WHEN sag.dataelementid=5765 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5765_up_to_pre_mon',
CASE WHEN sag.dataelementid=5766 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5766_up_to_pre_mon',
CASE WHEN sag.dataelementid=5767 AND sag.time='up_to_pre_mon' THEN sag.value END AS '5767_up_to_pre_mon',
CASE WHEN sag.dataelementid=7027 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7027_up_to_pre_mon',
CASE WHEN sag.dataelementid=7028 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7028_up_to_pre_mon',
CASE WHEN sag.dataelementid=7029 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7029_up_to_pre_mon',
CASE WHEN sag.dataelementid=7030 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7030_up_to_pre_mon',
CASE WHEN sag.dataelementid=7031 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7031_up_to_pre_mon',
CASE WHEN sag.dataelementid=7032 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7032_up_to_pre_mon',
CASE WHEN sag.dataelementid=7033 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7033_up_to_pre_mon',
CASE WHEN sag.dataelementid=7034 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7034_up_to_pre_mon',
CASE WHEN sag.dataelementid=7035 AND sag.time='up_to_pre_mon' THEN sag.value END AS '7035_up_to_pre_mon',


CASE WHEN sag.dataelementid=5779 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5779_up_to_curr_mon',
CASE WHEN sag.dataelementid=5780 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5780_up_to_curr_mon',
CASE WHEN sag.dataelementid=5781 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5781_up_to_curr_mon',
CASE WHEN sag.dataelementid=5782 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5782_up_to_curr_mon',
CASE WHEN sag.dataelementid=5804 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5804_up_to_curr_mon',
CASE WHEN sag.dataelementid=5805 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5805_up_to_curr_mon',
CASE WHEN sag.dataelementid=5806 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5806_up_to_curr_mon',
CASE WHEN sag.dataelementid=7309 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7309_up_to_curr_mon',
CASE WHEN sag.dataelementid=7310 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7310_up_to_curr_mon',
CASE WHEN sag.dataelementid=7311 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7311_up_to_curr_mon',
CASE WHEN sag.dataelementid=5910 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5910_up_to_curr_mon',
CASE WHEN sag.dataelementid=5911 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5911_up_to_curr_mon',
CASE WHEN sag.dataelementid=5783 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5783_up_to_curr_mon',
CASE WHEN sag.dataelementid=5784 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5784_up_to_curr_mon',
CASE WHEN sag.dataelementid=5785 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5785_up_to_curr_mon',
CASE WHEN sag.dataelementid=5786 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5786_up_to_curr_mon',
CASE WHEN sag.dataelementid=5787 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5787_up_to_curr_mon',
CASE WHEN sag.dataelementid=5788 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5788_up_to_curr_mon',
CASE WHEN sag.dataelementid=5912 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5912_up_to_curr_mon',
CASE WHEN sag.dataelementid=5913 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5913_up_to_curr_mon',
CASE WHEN sag.dataelementid=5789 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5789_up_to_curr_mon',
CASE WHEN sag.dataelementid=5790 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5790_up_to_curr_mon',
CASE WHEN sag.dataelementid=5914 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5914_up_to_curr_mon',
CASE WHEN sag.dataelementid=5915 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5915_up_to_curr_mon',
CASE WHEN sag.dataelementid=7055 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7055_up_to_curr_mon',
CASE WHEN sag.dataelementid=7056 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7056_up_to_curr_mon',
CASE WHEN sag.dataelementid=7012 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7012_up_to_curr_mon',
CASE WHEN sag.dataelementid=7013 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7013_up_to_curr_mon',
CASE WHEN sag.dataelementid=7014 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7014_up_to_curr_mon',
CASE WHEN sag.dataelementid=7015 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7015_up_to_curr_mon',
CASE WHEN sag.dataelementid=7016 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7016_up_to_curr_mon',
CASE WHEN sag.dataelementid=7017 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7017_up_to_curr_mon',
CASE WHEN sag.dataelementid=7018 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7018_up_to_curr_mon',
CASE WHEN sag.dataelementid=7019 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7019_up_to_curr_mon',
CASE WHEN sag.dataelementid=7020 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7020_up_to_curr_mon',
CASE WHEN sag.dataelementid=7021 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7021_up_to_curr_mon',
CASE WHEN sag.dataelementid=7022 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7022_up_to_curr_mon',
CASE WHEN sag.dataelementid=7023 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7023_up_to_curr_mon',
CASE WHEN sag.dataelementid=7024 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7024_up_to_curr_mon',
CASE WHEN sag.dataelementid=7025 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7025_up_to_curr_mon',
CASE WHEN sag.dataelementid=7026 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7026_up_to_curr_mon',
CASE WHEN sag.dataelementid=94 AND sag.time='up_to_curr_mon' THEN sag.value END AS '94_up_to_curr_mon',
CASE WHEN sag.dataelementid=5906 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5906_up_to_curr_mon',
CASE WHEN sag.dataelementid=5907 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5907_up_to_curr_mon',
CASE WHEN sag.dataelementid=5908 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5908_up_to_curr_mon',
CASE WHEN sag.dataelementid=5909 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5909_up_to_curr_mon',
CASE WHEN sag.dataelementid=5765 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5765_up_to_curr_mon',
CASE WHEN sag.dataelementid=5766 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5766_up_to_curr_mon',
CASE WHEN sag.dataelementid=5767 AND sag.time='up_to_curr_mon' THEN sag.value END AS '5767_up_to_curr_mon',
CASE WHEN sag.dataelementid=7027 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7027_up_to_curr_mon',
CASE WHEN sag.dataelementid=7028 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7028_up_to_curr_mon',
CASE WHEN sag.dataelementid=7029 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7029_up_to_curr_mon',
CASE WHEN sag.dataelementid=7030 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7030_up_to_curr_mon',
CASE WHEN sag.dataelementid=7031 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7031_up_to_curr_mon',
CASE WHEN sag.dataelementid=7032 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7032_up_to_curr_mon',
CASE WHEN sag.dataelementid=7033 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7033_up_to_curr_mon',
CASE WHEN sag.dataelementid=7034 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7034_up_to_curr_mon',
CASE WHEN sag.dataelementid=7035 AND sag.time='up_to_curr_mon' THEN sag.value END AS '7035_up_to_curr_mon'



FROM
(
	#During_the_month
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','curr_mn' AS 'time',MONTH(startdate)
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('Sub Centres')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (7010,7011,5779,5780,5781,5782,5804,5805,5806,7309,7310,7311,5910,5911,5783,
				   5784,5785,5786,5787,5788,5912,5913,5789,5790,5914,5915,7055,7056,7012,7013,
				   7014,7015,7016,7017,7018,7019,7020,7021,7022,7023,7024,7025,7026,94,5906,5907,
			           5908,5909,5765,5766,5767,7027,7028,7029,7030,7031,7032,7033,7034,7035)
	AND dv.categoryoptioncomboid IN (1)
	#AND p.startdate BETWEEN '2013-09-01' AND '2013-09-31'
	AND MONTH(p.startdate) = MONTH('2013-11-01')
	AND YEAR(p.startdate) = YEAR('2013-11-01')
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid

UNION	
	
        #up_to_previos_month_from_april
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','up_to_pre_mon' AS 'time',MONTH(startdate)
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('Sub Centres')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (5779,5780,5781,5782,5804,5805,5806,7309,7310,7311,5910,5911,5783,
				   5784,5785,5786,5787,5788,5912,5913,5789,5790,5914,5915,7055,7056,7012,7013,
				   7014,7015,7016,7017,7018,7019,7020,7021,7022,7023,7024,7025,7026,94,5906,5907,
			           5908,5909,5765,5766,5767,7027,7028,7029,7030,7031,7032,7033,7034,7035)
	AND dv.categoryoptioncomboid IN (1)
	AND CASE WHEN MONTH('2013-11-01') BETWEEN 5 AND 12 THEN YEAR(p.startdate)=YEAR('2013-11-01') AND MONTH(p.startdate) BETWEEN MONTH(CONCAT(YEAR('2013-11-01'),'-','04','-','01')) AND MONTH('2013-11-01')
	         WHEN MONTH('2013-11-01') BETWEEN 2 AND 4  THEN YEAR(p.startdate)=YEAR('2013-11-01')-1 AND MONTH(p.startdate) BETWEEN  MONTH(CONCAT(YEAR('2013-11-01')-1,'-','04','-','01')) AND MONTH(CONCAT(YEAR('2013-11-01')-1,'-','12','-','31')) OR YEAR(p.startdate)=YEAR('2013-11-01') AND MONTH(p.startdate) BETWEEN MONTH(CONCAT(YEAR('2013-11-01'),'-','01','-','01')) AND MONTH('2013-11-01')-1
	         WHEN MONTH('2013-11-01')=1 THEN YEAR(p.startdate)=YEAR('2013-11-01')-1 AND MONTH(p.startdate) BETWEEN MONTH(CONCAT(YEAR('2013-11-01')-1,'04','01')) AND MONTH(CONCAT(YEAR('2013-11-01')-1,'-',12,'-',31))
	     END
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
	
UNION	
	
        #up_to_current_month_from_april
	SELECT asd.organisationunitid,asd.name,asd.ou_name,asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value AS 'value','up_to_curr_mon' AS 'time',MONTH(startdate)
	FROM
	(
	SELECT ou3.organisationunitid,ou.name,og.name AS 'gname',ou3.name AS 'ou_name'
	FROM orgunitgroupmembers ogm
	INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
	INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
	INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
	INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
	WHERE og.name IN ('Sub Centres')
	#AND ou.name LIKE 'Ludhiana District'

	)asd

	LEFT JOIN

	(
	SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
	FROM datavalue dv
	INNER JOIN period p ON p.periodid=dv.periodid 
	WHERE dv.dataelementid IN (5779,5780,5781,5782,5804,5805,5806,7309,7310,7311,5910,5911,5783,
				   5784,5785,5786,5787,5788,5912,5913,5789,5790,5914,5915,7055,7056,7012,7013,
				   7014,7015,7016,7017,7018,7019,7020,7021,7022,7023,7024,7025,7026,94,5906,5907,
			           5908,5909,5765,5766,5767,7027,7028,7029,7030,7031,7032,7033,7034,7035)
	AND dv.categoryoptioncomboid IN (1)
	AND CASE WHEN MONTH('2013-11-01') BETWEEN 4 AND 12 THEN YEAR(p.startdate)=YEAR('2013-11-01') AND MONTH(p.startdate) BETWEEN MONTH(CONCAT(YEAR('2013-11-01'),'-','04','-','01')) AND MONTH('2013-11-01')
	         WHEN MONTH('2013-11-01') BETWEEN 1 AND 3  THEN YEAR(p.startdate)=YEAR('2013-11-01')-1 AND MONTH(p.startdate) BETWEEN  MONTH(CONCAT(YEAR('2013-11-01')-1,'-','04','-','01')) AND MONTH(CONCAT(YEAR('2013-11-01')-1,'-','12','-','31')) OR YEAR(p.startdate)=YEAR('2013-11-01') AND MONTH(p.startdate) BETWEEN MONTH(CONCAT(YEAR('2013-11-01'),'-','01','-','01')) AND MONTH('2013-11-01')
	     END
	AND periodtypeid = 3

	)asd1

	ON asd.organisationunitid = asd1.sourceid
)sag
)sag1
GROUP BY sag1.name
	