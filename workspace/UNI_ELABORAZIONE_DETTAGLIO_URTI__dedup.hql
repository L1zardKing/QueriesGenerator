INSERT OVERWRITE TABLE %s.%s 
SELECT
dedup.ID_DETTAGLIO,
dedup.ID_ELABORAZIONE,
dedup.NUM_DETTAGLIO,
dedup.NUM_AMAX,
dedup.NUM_TETA,
dedup.DIREZIONE_URTO,
dedup.NUM_IMPULSO_DVU,
dedup.NUM_PP0,
dedup.NUM_PP1,
dedup.NUM_PP2,
dedup.NUM_DURATA_EVENTO
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
dedup.ID_DETTAGLIO,
dedup.ID_ELABORAZIONE,
dedup.NUM_DETTAGLIO,
dedup.NUM_AMAX,
dedup.NUM_TETA,
dedup.DIREZIONE_URTO,
dedup.NUM_IMPULSO_DVU,
dedup.NUM_PP0,
dedup.NUM_PP1,
dedup.NUM_PP2,
dedup.NUM_DURATA_EVENTO