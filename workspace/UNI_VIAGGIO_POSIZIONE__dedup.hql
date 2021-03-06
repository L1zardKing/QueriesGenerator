set hive.exec.dynamic.partition.mode=nonstrict;
INSERT OVERWRITE TABLE %s.%s PARTITION (anno, week) 
SELECT
dedup.ID_POSIZIONE_DETT,
dedup.ID_VIAGGIO,
dedup.DATA_ORA_POSIZIONE,
dedup.LAT_POSIZIONE,
dedup.LONG_POSIZIONE,
dedup.NUM_LIVELLO_GPS,
dedup.NUM_VELOCITA,
dedup.DISTANZA_INTERMEDIA,
dedup.NUM_MOMENTO_CRASH,
dedup.NUM_HEADING_GPS,
dedup.NUM_STATO_QUADRO,
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
dedup.ID_POSIZIONE_DETT,
dedup.ID_VIAGGIO,
dedup.DATA_ORA_POSIZIONE,
dedup.LAT_POSIZIONE,
dedup.LONG_POSIZIONE,
dedup.NUM_LIVELLO_GPS,
dedup.NUM_VELOCITA,
dedup.DISTANZA_INTERMEDIA,
dedup.NUM_MOMENTO_CRASH,
dedup.NUM_HEADING_GPS,
dedup.NUM_STATO_QUADRO,
dedup.data_ora_sinistro,
dedup.anno, dedup.week