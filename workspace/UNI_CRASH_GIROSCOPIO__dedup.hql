set hive.exec.dynamic.partition.mode=nonstrict;
INSERT OVERWRITE TABLE %s.%s PARTITION (anno, week) 
SELECT
dedup.ID_GYR,
dedup.ID_ELABORAZIONE,
dedup.VEL_ANG_X,
dedup.VEL_ANG_Y,
dedup.VEL_ANG_Z,
dedup.VEL_ANG_MED,
dedup.ORA_CRASH,
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
dedup.ID_GYR,
dedup.ID_ELABORAZIONE,
dedup.VEL_ANG_X,
dedup.VEL_ANG_Y,
dedup.VEL_ANG_Z,
dedup.VEL_ANG_MED,
dedup.ORA_CRASH,
dedup.data_ora_sinistro,
dedup.anno, dedup.week