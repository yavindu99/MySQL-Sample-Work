        #last yr
        SELECT asd.Circle,asd.District,asd.gname,asd.name,'lyr' AS 'time',
        asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,MONTH(startdate)
        FROM
            (
            SELECT ogm.organisationunitid,og.name AS 'gname',ou.name,os.level,ou1.name AS 'Circle',ou2.name AS 'District'
            FROM orgunitgroupmembers ogm
            INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
            INNER JOIN organisationunit ou ON ou.organisationunitid = ogm.organisationunitid
            INNER JOIN _orgunitstructure os ON os.organisationunitid = ou.organisationunitid
            INNER JOIN organisationunit ou1 ON ou1.organisationunitid = os.idlevel3
            INNER JOIN organisationunit ou2 ON ou2.organisationunitid = os.idlevel4
            WHERE og.name IN ('District Group','PHC Group','SDH 50 Group','SDH 100 Group','DH Group','RH Group','GH Group','WH Group','SC')
            AND ou1.name LIKE 'Pune Circle'
            )asd

        LEFT JOIN

            (
            SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
            FROM datavalue dv
            INNER JOIN period p ON p.periodid=dv.periodid 
            WHERE dv.dataelementid IN (96,5966,78,5951,80,5953,81,5954)
            AND dv.categoryoptioncomboid IN (1)
            AND CASE WHEN MONTH('2012-07-01') BETWEEN 4 AND 12 
                    THEN YEAR(p.startdate) = YEAR('2012-07-01')-1
                        AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2012-07-01')
                WHEN  MONTH('2012-07-01') BETWEEN 1 AND 3     
                THEN p.startdate BETWEEN CONCAT(YEAR('2012-07-01')-2,'-',04,'-',01) AND CONCAT(YEAR('2012-07-01')-1,'-',MONTH('2012-07-01'),'-',DAY('2012-07-01'))
                END    

            AND periodtypeid = 3
            )asd1

        ON asd.organisationunitid = asd1.sourceid

        UNION

        SELECT asd.Circle,CASE WHEN asd.gname LIKE 'Corporation Group' THEN asd.name END AS 'District',asd.gname,asd.name,'lyr' AS 'time',
        asd1.dataelementid,asd1.categoryoptioncomboid,asd1.value,MONTH(startdate)
        FROM
            (
            SELECT ogm.organisationunitid,og.name AS 'gname',ou.name,os.level,ou1.name AS 'Circle',ou2.name AS 'District'
            FROM orgunitgroupmembers ogm
            INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
            INNER JOIN organisationunit ou ON ou.organisationunitid = ogm.organisationunitid
            INNER JOIN _orgunitstructure os ON os.organisationunitid = ou.organisationunitid
            INNER JOIN organisationunit ou1 ON ou1.organisationunitid = os.idlevel3
            INNER JOIN organisationunit ou2 ON ou2.organisationunitid = os.idlevel4
            WHERE og.name IN ('Corporation Group')
            AND ou1.name LIKE 'Pune Circle'
            )asd

        LEFT JOIN

            (
            SELECT dv.dataelementid,dv.categoryoptioncomboid,dv.value,dv.sourceid,p.startdate
            FROM datavalue dv
            INNER JOIN period p ON p.periodid=dv.periodid 
            WHERE dv.dataelementid IN (96,5966,78,5951,80,5953,81,5954)
            AND dv.categoryoptioncomboid IN (1)
            AND CASE WHEN MONTH('2012-07-01') BETWEEN 4 AND 12 
                    THEN YEAR(p.startdate) = YEAR('2012-07-01')-1
                        AND MONTH(p.startdate) BETWEEN 4 AND MONTH('2012-07-01')
                WHEN  MONTH('2012-07-01') BETWEEN 1 AND 3     
                THEN p.startdate BETWEEN CONCAT(YEAR('2012-07-01')-2,'-',04,'-',01) AND CONCAT(YEAR('2012-07-01')-1,'-',MONTH('2012-07-01'),'-',DAY('2012-07-01'))
                END    

            AND periodtypeid = 3

            )asd1

        ON asd.organisationunitid = asd1.sourceid