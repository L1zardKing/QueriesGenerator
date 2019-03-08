INSERT OVERWRITE TABLE %s.%s
SELECT
dedup.ID_GYR,
dedup.ID_ELABORAZIONE,
dedup.VEL_ANG_X,
dedup.VEL_ANG_Y,
dedup.VEL_ANG_Z,
dedup.VEL_ANG_MED,
dedup.ORA_CRASH 
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
dedup.ORA_CRASH