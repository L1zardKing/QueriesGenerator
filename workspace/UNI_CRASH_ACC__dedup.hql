INSERT OVERWRITE TABLE %s.%s
SELECT
dedup.ID_ACC,
dedup.ID_ELABORAZIONE,
dedup.NUM_ACC_X,
dedup.NUM_ACC_Y,
dedup.NUM_ACC_Z,
dedup.NUM_ACC_XY,
dedup.NUM_VEL_ACC,
dedup.NUM_VEL_GPS,
dedup.ORA_CRASH,
dedup.NUM_APP_URTO 
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
dedup.ID_ACC,
dedup.ID_ELABORAZIONE,
dedup.NUM_ACC_X,
dedup.NUM_ACC_Y,
dedup.NUM_ACC_Z,
dedup.NUM_ACC_XY,
dedup.NUM_VEL_ACC,
dedup.NUM_VEL_GPS,
dedup.ORA_CRASH,
dedup.NUM_APP_URTO