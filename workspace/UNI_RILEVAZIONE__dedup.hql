INSERT OVERWRITE TABLE %s.%s 
SELECT
dedup.ID_RILEVAZIONE,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO,
dedup.DATA_ORA_RILEVAZIONE,
dedup.DATA_INSERIMENTO,
dedup.DATA_REGISTRAZIONE,
dedup.DATA_CONSULTAZIONE,
dedup.NUM_ACCELERAZIONE,
dedup.NUM_LAT_DICHIARATO,
dedup.NUM_LONG_DICHIARATO,
dedup.COD_PROVINCIA,
dedup.DESC_VIA,
dedup.DESC_COMUNE,
dedup.COD_CAP,
dedup.COD_COMPAGNIA,
dedup.DESC_STRADA,
dedup.DESC_INSTALLATORE,
dedup.COD_INSTALLATORE,
dedup.NUM_VOUCHER,
dedup.COD_TIPO_CRASH,
dedup.COD_TIPO_ALGORITMO,
dedup.COD_DATI_CRASH,
dedup.FLG_GIORNO_ATTIVAZIONE,
dedup.NUM_LIVELLO_GPS,
dedup.FLG_FILTRATO,
dedup.FLG_ASSISTENZA,
dedup.NUM_MAX_ACC,
dedup.NUM_ANG_URTO,
dedup.NUM_MAX_ACC_2,
dedup.NUM_ANG_URTO_2,
dedup.NUM_MAX_ACC_3,
dedup.NUM_ANG_URTO_3,
dedup.DATI_CRASH_CARICATI,
dedup.FLG_DEVICE_ATTIVO,
dedup.ID_CRASH_ASSISTENZA
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
dedup.ID_RILEVAZIONE,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO,
dedup.DATA_ORA_RILEVAZIONE,
dedup.DATA_INSERIMENTO,
dedup.DATA_REGISTRAZIONE,
dedup.DATA_CONSULTAZIONE,
dedup.NUM_ACCELERAZIONE,
dedup.NUM_LAT_DICHIARATO,
dedup.NUM_LONG_DICHIARATO,
dedup.COD_PROVINCIA,
dedup.DESC_VIA,
dedup.DESC_COMUNE,
dedup.COD_CAP,
dedup.COD_COMPAGNIA,
dedup.DESC_STRADA,
dedup.DESC_INSTALLATORE,
dedup.COD_INSTALLATORE,
dedup.NUM_VOUCHER,
dedup.COD_TIPO_CRASH,
dedup.COD_TIPO_ALGORITMO,
dedup.COD_DATI_CRASH,
dedup.FLG_GIORNO_ATTIVAZIONE,
dedup.NUM_LIVELLO_GPS,
dedup.FLG_FILTRATO,
dedup.FLG_ASSISTENZA,
dedup.NUM_MAX_ACC,
dedup.NUM_ANG_URTO,
dedup.NUM_MAX_ACC_2,
dedup.NUM_ANG_URTO_2,
dedup.NUM_MAX_ACC_3,
dedup.NUM_ANG_URTO_3,
dedup.DATI_CRASH_CARICATI,
dedup.FLG_DEVICE_ATTIVO,
dedup.ID_CRASH_ASSISTENZA