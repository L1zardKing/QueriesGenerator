set hive.exec.dynamic.partition.mode=nonstrict;
INSERT OVERWRITE TABLE %s.%s PARTITION (anno, week) 
SELECT
dedup.ID_CRASH_POSIZIONE_OCTO,
dedup.LAT_RILEVAZIONE,
dedup.LONG_RILEVAZIONE,
dedup.NUM_LIVELLO_GPS,
dedup.FLAG_CRASH,
dedup.ID_CRASH_OCTO,
dedup.DATA_ORA_RILEVAZIONE,
dedup.VELOCITA_GPS,
dedup.HEADING_GPS,
dedup.STATO_QUADRO,
dedup.ID_RICHIESTA,
dedup.NUM_DIST_INTER,
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
dedup.ID_CRASH_POSIZIONE_OCTO,
dedup.LAT_RILEVAZIONE,
dedup.LONG_RILEVAZIONE,
dedup.NUM_LIVELLO_GPS,
dedup.FLAG_CRASH,
dedup.ID_CRASH_OCTO,
dedup.DATA_ORA_RILEVAZIONE,
dedup.VELOCITA_GPS,
dedup.HEADING_GPS,
dedup.STATO_QUADRO,
dedup.ID_RICHIESTA,
dedup.NUM_DIST_INTER,
dedup.data_ora_sinistro,
dedup.anno, dedup.week