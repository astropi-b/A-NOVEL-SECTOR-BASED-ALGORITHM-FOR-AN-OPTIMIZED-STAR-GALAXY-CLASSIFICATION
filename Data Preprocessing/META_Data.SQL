SELECT TOP 1000
    p.objid, p.ra, p.dec, p.u, p.g, p.r, p.i, p.z,
    p.run, p.rerun, p.camcol, p.field,
    s.specobjid, s.class, s.z as redshift,
    s.plate, s.mjd, s.fiberid
FROM PhotoObj AS p
JOIN SpecObj AS s ON s.bestobjid = p.objid
WHERE 
    p.ra BETWEEN 180 AND 240
    AND p.dec BETWEEN 30 AND 60
    AND s.class IN ('STAR', 'GALAXY', 'QSO')
