INSERT OVERWRITE TABLE %s.%s
SELECT
dedup.ID_SOSTA,
dedup.DATA_ORA_SOSTA,
dedup.NUM_LAT_SOSTA,
dedup.NUM_LONG_SOSTA,
dedup.QUALITA_GPS,
dedup.COD_PROVINCIA,
dedup.DESC_VIA,
dedup.COD_CAP,
dedup.DESC_COMUNE,
dedup.DESC_CATEG_STRADA,
dedup.ID_RICHIESTA 
FROM (
    SELECT *
    FROM
        %s.%s
    UNION ALL
    SELECT
        *
    FROM
        %s.%s ) as dedup
GROUP BY
dedup.ID_SOSTA,
dedup.DATA_ORA_SOSTA,
dedup.NUM_LAT_SOSTA,
dedup.NUM_LONG_SOSTA,
dedup.QUALITA_GPS,
dedup.COD_PROVINCIA,
dedup.DESC_VIA,
dedup.COD_CAP,
dedup.DESC_COMUNE,
dedup.DESC_CATEG_STRADA,
dedup.ID_RICHIESTA