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