INSERT OVERWRITE TABLE %s.%s 
SELECT
dedup.ID_STATO_DEVICE,
dedup.DATA_ORA_INIZIO,
dedup.DATA_ORA_FINE,
dedup.STATO_DEVICE,
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
dedup.ID_STATO_DEVICE,
dedup.DATA_ORA_INIZIO,
dedup.DATA_ORA_FINE,
dedup.STATO_DEVICE,
dedup.ID_RICHIESTA