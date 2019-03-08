INSERT OVERWRITE TABLE %s.%s
SELECT
dedup.ID_CRASH,
dedup.ID_ELABORAZIONE,
dedup.NUM_LAT_CRASH,
dedup.NUM_LONG_CRASH,
dedup.NUM_VEL_GPS,
dedup.NUM_QUADRO,
dedup.NUM_FLAG,
dedup.ORA_CRASH,
dedup.NUM_ORIGINE_DATO 
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
dedup.NUM_ORIGINE_DATO