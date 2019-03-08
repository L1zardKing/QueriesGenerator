INSERT OVERWRITE TABLE %s.%s
SELECT
dedup.ID_CRASH_ACC_OCTO,
dedup.NUM_ACC_X,
dedup.NUM_ACC_Y,
dedup.NUM_ACC_Z,
dedup.HZ,
dedup.DATA_ORA_POS,
dedup.ID_CRASH_OCTO,
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
dedup.ID_CRASH_ACC_OCTO,
dedup.NUM_ACC_X,
dedup.NUM_ACC_Y,
dedup.NUM_ACC_Z,
dedup.HZ,
dedup.DATA_ORA_POS,
dedup.ID_CRASH_OCTO,
dedup.ID_RICHIESTA