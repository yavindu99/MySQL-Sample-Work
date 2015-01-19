SELECT ou3.name
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
WHERE og.name IN ('Divisions')

SELECT ou.name
FROM organisationunit ou
INNER JOIN _orgunitstructure os ON os.idlevel4=ou.organisationunitid
WHERE os.level=4
AND idlevel3 IN (SELECT ou.organisationunitid
		FROM organisationunit ou
		WHERE ou.name LIKE ('Division Rangpur'))


SELECT ou3.name
FROM orgunitgroupmembers ogm
INNER JOIN orgunitgroup og ON ogm.orgunitgroupid = og.orgunitgroupid
INNER JOIN _orgunitstructure os ON ogm.organisationunitid=os.organisationunitid
INNER JOIN organisationunit ou ON ou.organisationunitid = os.idlevel3
INNER JOIN organisationunit ou3 ON ou3.organisationunitid = os.organisationunitid
WHERE og.name IN ('Markets')
AND os.idlevel4 IN (SELECT ou.organisationunitid
		FROM organisationunit ou
		WHERE ou.name LIKE ('District Dinajpur'))
