set hive.exec.dynamic.partition.mode=nonstrict;
INSERT OVERWRITE TABLE %s.%s PARTITION (anno, week) 
SELECT
dedup.ID_CRASH_ACC_OCTO,
dedup.NUM_ACC_X,
dedup.NUM_ACC_Y,
dedup.NUM_ACC_Z,
dedup.HZ,
dedup.DATA_ORA_POS,
dedup.ID_CRASH_OCTO,
dedup.ID_RICHIESTA,
dedup.data_ora_sinistro,
dedup.anno, dedup.week
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
dedup.ID_RICHIESTA,
dedup.data_ora_sinistro,
dedup.anno, dedup.week