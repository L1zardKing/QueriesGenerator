INSERT OVERWRITE TABLE %s.%s
SELECT
dedup.ID_CRASH_GIR,
dedup.NUM_GIR_X,
dedup.NUM_GIR_Y,
dedup.NUM_GIR_Z,
dedup.DATA_ORA_POSIZIONE,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO 
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
dedup.ID_CRASH_GIR,
dedup.NUM_GIR_X,
dedup.NUM_GIR_Y,
dedup.NUM_GIR_Z,
dedup.DATA_ORA_POSIZIONE,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO