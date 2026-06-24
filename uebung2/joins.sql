--Tabelle mitarbeiter mit JOINs;
SELECT 
    m.ma_id,
    m.nname,
    m.vname,
    m.str_hsnr,
    m.plz,
    m.ort,
    m.gebdatum,
    f.fam_bez,
    a.abtbez,
    az.az_bez
FROM mitarbeiter m
INNER JOIN familienstand f
    ON m.f_id = f.f_id
INNER JOIN abteilung a
    ON m.abt_nr = a.abtnr
INNER JOIN arbeitszeitmodell az
    ON m.azm_id = az.modell_code;

--Tabelle mitarbeiter OHNE JOIN;
    SELECT 
    m.ma_id,
    m.nname,
    m.vname,
    m.str_hsnr,
    m.plz,
    m.ort,
    m.gebdatum,
    m.f_id,
    m.azm_id,
    m.abt_nr
FROM mitarbeiter m;


--alle abteilungen AUCH ohne Mitarbeitern;
SELECT 
    a.abtnr,
    a.abtbez,
    m.ma_id,
    m.nname,
    m.vname
FROM mitarbeiter m
RIGHT JOIN abteilung a
    ON m.abt_nr = a.abtnr;

--abteilungen ohne Mitarbeitern;
SELECT 
    a.abtnr,
    a.abtbez
FROM abteilung a
LEFT JOIN mitarbeiter m
    ON a.abtnr = m.abt_nr
WHERE m.ma_id IS NULL;