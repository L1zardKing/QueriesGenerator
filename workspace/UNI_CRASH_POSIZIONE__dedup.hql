set hive.exec.dynamic.partition.mode=nonstrict;
INSERT OVERWRITE TABLE %s.%s PARTITION (anno, week) 
SELECT
dedup.ID_CRASH,
dedup.ID_ELABORAZIONE,
dedup.NUM_LAT_CRASH,
dedup.NUM_LONG_CRASH,
dedup.NUM_VEL_GPS,
dedup.NUM_QUADRO,
dedup.NUM_FLAG,
dedup.ORA_CRASH,
dedup.NUM_ORIGINE_DATO,
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
dedup.ID_CRASH,
dedup.ID_ELABORAZIONE,
dedup.NUM_LAT_CRASH,
dedup.NUM_LONG_CRASH,
dedup.NUM_VEL_GPS,
dedup.NUM_QUADRO,
dedup.NUM_FLAG,
dedup.ORA_CRASH,
dedup.NUM_ORIGINE_DATO,
dedup.data_ora_sinistro,
dedup.anno, dedup.week