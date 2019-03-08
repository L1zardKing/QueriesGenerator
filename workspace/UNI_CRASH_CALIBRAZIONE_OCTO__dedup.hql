INSERT OVERWRITE TABLE %s.%s
SELECT
dedup.ID_CRASH_ROTAZ,
dedup.NUM_ALFA_X,
dedup.NUM_ALFA_Y,
dedup.NUM_ALFA_Z,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO,
dedup.NUM_OFFSET_X,
dedup.NUM_OFFSET_Y,
dedup.NUM_OFFSET_Z 
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
dedup.ID_CRASH_ROTAZ,
dedup.NUM_ALFA_X,
dedup.NUM_ALFA_Y,
dedup.NUM_ALFA_Z,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO,
dedup.NUM_OFFSET_X,
dedup.NUM_OFFSET_Y,
dedup.NUM_OFFSET_Z