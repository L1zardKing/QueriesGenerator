INSERT OVERWRITE TABLE %s.%s
SELECT
dedup.ID_CRASH_GIR,
dedup.NUM_GIR_X,
dedup.NUM_GIR_Y,
dedup.NUM_GIR_Z,
dedup.DATA_ORA_POSIZIONE,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO,
dedup.ID_ANOMALIA,
dedup.TIPO_ANOMALIA,
dedup.STATO_ANOMALIA,
dedup.DATA_ORA_INIZIO,
dedup.DATA_ORA_FINE,
dedup.ID_RICHIESTA,
dedup.ID_ELABORAZIONE,
dedup.ID_RILEVAZIONE,
dedup.NUM_VERSIONE,
dedup.DATA_ORA_ELABORAZIONE,
dedup.DESC_NOME_FILE,
dedup.NUM_LAT_URTO,
dedup.NUM_LONG_URTO,
dedup.NUM_AMAX,
dedup.NUM_TETA,
dedup.NUM_DV_URTO,
dedup.NUM_V_URTO,
dedup.NUM_RAGIONE,
dedup.NUM_ACC_ACT,
dedup.NUM_GPS_ACT,
dedup.NUM_PPU,
dedup.NUM_DT,
dedup.NUM_DLAT,
dedup.NUM_DLONG,
dedup.NUM_I_INIZIO_ANI,
dedup.NUM_I_URTO_ANI,
dedup.NUM_I_FINE_ANI,
dedup.SUCCESSO,
dedup.RET_CODE,
dedup.DIREZIONE_MOTO,
dedup.NUM_V_GPS,
dedup.NUM_ACC_SQM,
dedup.NUM_ACC_PRIMA_URTO_T,
dedup.NUM_ACC_PRIMA_URTO_N,
dedup.NUM_N_URTI,
dedup.DIREZIONE_URTO,
dedup.NUM_DVUN,
dedup.NUM_DURATA_EVENTO,
dedup.NUM_RESP_LIV_1,
dedup.NUM_RESP_LIV_2,
dedup.NUM_ORDINE_SINISTRO,
dedup.NUM_TETA_GIRO,
dedup.NUM_OFFSET,
dedup.ID_CRASH_ROTAZ,
dedup.NUM_ALFA_X,
dedup.NUM_ALFA_Y,
dedup.NUM_ALFA_Z,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO,
dedup.NUM_OFFSET_X,
dedup.NUM_OFFSET_Y,
dedup.NUM_OFFSET_Z,
dedup.ID_ACC,
dedup.ID_ELABORAZIONE,
dedup.NUM_ACC_X,
dedup.NUM_ACC_Y,
dedup.NUM_ACC_Z,
dedup.NUM_ACC_XY,
dedup.NUM_VEL_ACC,
dedup.NUM_VEL_GPS,
dedup.ORA_CRASH,
dedup.NUM_APP_URTO,
dedup.ID_STATO_DEVICE,
dedup.DATA_ORA_INIZIO,
dedup.DATA_ORA_FINE,
dedup.STATO_DEVICE,
dedup.ID_RICHIESTA,
dedup.ID_RICHIESTA,
dedup.NUM_SINISTRO,
dedup.DATA_ORA_SINISTRO,
dedup.STATO_OCTO,
dedup.NUM_TARGA,
dedup.INDIRIZZO,
dedup.DATA_INSERIMENTO,
dedup.UID_RICHIEDENTE,
dedup.DATA_AGGIORNAMENTO,
dedup.DESC_AGG,
dedup.STATO_TERMINALE,
dedup.DESC_FONTE,
dedup.NUM_VOUCHER,
dedup.DESC_CONTRATTO,
dedup.DATA_ULTIMO_DOWNLOAD,
dedup.NUM_CRASH,
dedup.NUM_VIAGGI,
dedup.NUM_ANOMALIE,
dedup.NUM_NO_DEVICE,
dedup.NUM_QUESTIONARI,
dedup.COD_TIPO_TERMINALE,
dedup.DESC_NOME_FILE,
dedup.FLAG_CARD,
dedup.COD_RESPONSABILITA,
dedup.NUM_CRASH_OCTO,
dedup.PROVINCIA_DICHIARATA,
dedup.PROVINCE_CIRCOLAZIONE,
dedup.ATTORI_DANNO,
dedup.NUM_SINISTRO_CONTROPARTE,
dedup.NUM_LAT_DICHIARATA,
dedup.NUM_LONG_DICHIARATA,
dedup.DATA_APERTURA_SINISTRO,
dedup.TIPO_FIRMA,
dedup.BAREME_ASS_DA_ASS,
dedup.BAREME_CTP_DA_ASS,
dedup.BAREME_ASS_DA_CTP,
dedup.BAREME_CTP_DA_CTP,
dedup.DESC_NOME_FILE_OCTO,
dedup.NUM_FREQ_CAMP_GPS,
dedup.NUM_FREQ_CAMP_ACC,
dedup.NUM_FREQ_CAMP_GIR,
dedup.DESC_VER_FIRMWARE,
dedup.DESC_TEL1,
dedup.DESC_TEL2,
dedup.DESC_TEL3,
dedup.DESC_TEL4,
dedup.NUM_MAX_ACC,
dedup.DATA_CHIUSURA_SINISTRO,
dedup.NOME_ASSICURATO,
dedup.GARANZIA_IMPATTATA,
dedup.PRODUTTORE,
dedup.MODELLO,
dedup.TITOLARITA,
dedup.COMPAGNIA,
dedup.CHIUSURA_ASSISTENZA,
dedup.ID_VIAGGIO,
dedup.ID_RICHIESTA,
dedup.ID_VIAGGIO_OCTO,
dedup.DATA_ORA_PARTENZA,
dedup.DATA_ORA_ARRIVO,
dedup.DATA_INSERIMENTO,
dedup.NUM_LAT_PARTENZA,
dedup.NUM_LONG_PARTENZA,
dedup.NUM_LAT_ARRIVO,
dedup.NUM_LONG_ARRIVO,
dedup.NUM_LIVELLO_GPS_PARTENZA,
dedup.NUM_LIVELLO_GPS_ARRIVO,
dedup.NUM_DURATA_VIAGGIO,
dedup.NUM_DISTANZA_VIAGGIO,
dedup.COD_PROVINCIA_PARTENZA,
dedup.DESC_VIA_PARTENZA,
dedup.DESC_COMUNE_PARTENZA,
dedup.COD_CAP_PARTENZA,
dedup.COD_PROVINCIA_ARRIVO,
dedup.DESC_VIA_ARRIVO,
dedup.DESC_COMUNE_ARRIVO,
dedup.COD_CAP_ARRIVO,
dedup.DESC_STRADA_PARTENZA,
dedup.DESC_STRADA_ARRIVO,
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
dedup.ID_CRASH_ASSISTENZA,
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
dedup.NUM_DURATA_EVENTO,
dedup.ID_CRASH,
dedup.ID_ELABORAZIONE,
dedup.NUM_LAT_CRASH,
dedup.NUM_LONG_CRASH,
dedup.NUM_VEL_GPS,
dedup.NUM_QUADRO,
dedup.NUM_FLAG,
dedup.ORA_CRASH,
dedup.NUM_ORIGINE_DATO,
dedup.ID_GYR,
dedup.ID_ELABORAZIONE,
dedup.VEL_ANG_X,
dedup.VEL_ANG_Y,
dedup.VEL_ANG_Z,
dedup.VEL_ANG_MED,
dedup.ORA_CRASH,
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
dedup.ID_CRASH_GIR,
dedup.NUM_GIR_X,
dedup.NUM_GIR_Y,
dedup.NUM_GIR_Z,
dedup.DATA_ORA_POSIZIONE,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO,
dedup.ID_ANOMALIA,
dedup.TIPO_ANOMALIA,
dedup.STATO_ANOMALIA,
dedup.DATA_ORA_INIZIO,
dedup.DATA_ORA_FINE,
dedup.ID_RICHIESTA,
dedup.ID_ELABORAZIONE,
dedup.ID_RILEVAZIONE,
dedup.NUM_VERSIONE,
dedup.DATA_ORA_ELABORAZIONE,
dedup.DESC_NOME_FILE,
dedup.NUM_LAT_URTO,
dedup.NUM_LONG_URTO,
dedup.NUM_AMAX,
dedup.NUM_TETA,
dedup.NUM_DV_URTO,
dedup.NUM_V_URTO,
dedup.NUM_RAGIONE,
dedup.NUM_ACC_ACT,
dedup.NUM_GPS_ACT,
dedup.NUM_PPU,
dedup.NUM_DT,
dedup.NUM_DLAT,
dedup.NUM_DLONG,
dedup.NUM_I_INIZIO_ANI,
dedup.NUM_I_URTO_ANI,
dedup.NUM_I_FINE_ANI,
dedup.SUCCESSO,
dedup.RET_CODE,
dedup.DIREZIONE_MOTO,
dedup.NUM_V_GPS,
dedup.NUM_ACC_SQM,
dedup.NUM_ACC_PRIMA_URTO_T,
dedup.NUM_ACC_PRIMA_URTO_N,
dedup.NUM_N_URTI,
dedup.DIREZIONE_URTO,
dedup.NUM_DVUN,
dedup.NUM_DURATA_EVENTO,
dedup.NUM_RESP_LIV_1,
dedup.NUM_RESP_LIV_2,
dedup.NUM_ORDINE_SINISTRO,
dedup.NUM_TETA_GIRO,
dedup.NUM_OFFSET,
dedup.ID_CRASH_ROTAZ,
dedup.NUM_ALFA_X,
dedup.NUM_ALFA_Y,
dedup.NUM_ALFA_Z,
dedup.ID_RICHIESTA,
dedup.ID_CRASH_OCTO,
dedup.NUM_OFFSET_X,
dedup.NUM_OFFSET_Y,
dedup.NUM_OFFSET_Z,
dedup.ID_ACC,
dedup.ID_ELABORAZIONE,
dedup.NUM_ACC_X,
dedup.NUM_ACC_Y,
dedup.NUM_ACC_Z,
dedup.NUM_ACC_XY,
dedup.NUM_VEL_ACC,
dedup.NUM_VEL_GPS,
dedup.ORA_CRASH,
dedup.NUM_APP_URTO,
dedup.ID_STATO_DEVICE,
dedup.DATA_ORA_INIZIO,
dedup.DATA_ORA_FINE,
dedup.STATO_DEVICE,
dedup.ID_RICHIESTA,
dedup.ID_RICHIESTA,
dedup.NUM_SINISTRO,
dedup.DATA_ORA_SINISTRO,
dedup.STATO_OCTO,
dedup.NUM_TARGA,
dedup.INDIRIZZO,
dedup.DATA_INSERIMENTO,
dedup.UID_RICHIEDENTE,
dedup.DATA_AGGIORNAMENTO,
dedup.DESC_AGG,
dedup.STATO_TERMINALE,
dedup.DESC_FONTE,
dedup.NUM_VOUCHER,
dedup.DESC_CONTRATTO,
dedup.DATA_ULTIMO_DOWNLOAD,
dedup.NUM_CRASH,
dedup.NUM_VIAGGI,
dedup.NUM_ANOMALIE,
dedup.NUM_NO_DEVICE,
dedup.NUM_QUESTIONARI,
dedup.COD_TIPO_TERMINALE,
dedup.DESC_NOME_FILE,
dedup.FLAG_CARD,
dedup.COD_RESPONSABILITA,
dedup.NUM_CRASH_OCTO,
dedup.PROVINCIA_DICHIARATA,
dedup.PROVINCE_CIRCOLAZIONE,
dedup.ATTORI_DANNO,
dedup.NUM_SINISTRO_CONTROPARTE,
dedup.NUM_LAT_DICHIARATA,
dedup.NUM_LONG_DICHIARATA,
dedup.DATA_APERTURA_SINISTRO,
dedup.TIPO_FIRMA,
dedup.BAREME_ASS_DA_ASS,
dedup.BAREME_CTP_DA_ASS,
dedup.BAREME_ASS_DA_CTP,
dedup.BAREME_CTP_DA_CTP,
dedup.DESC_NOME_FILE_OCTO,
dedup.NUM_FREQ_CAMP_GPS,
dedup.NUM_FREQ_CAMP_ACC,
dedup.NUM_FREQ_CAMP_GIR,
dedup.DESC_VER_FIRMWARE,
dedup.DESC_TEL1,
dedup.DESC_TEL2,
dedup.DESC_TEL3,
dedup.DESC_TEL4,
dedup.NUM_MAX_ACC,
dedup.DATA_CHIUSURA_SINISTRO,
dedup.NOME_ASSICURATO,
dedup.GARANZIA_IMPATTATA,
dedup.PRODUTTORE,
dedup.MODELLO,
dedup.TITOLARITA,
dedup.COMPAGNIA,
dedup.CHIUSURA_ASSISTENZA,
dedup.ID_VIAGGIO,
dedup.ID_RICHIESTA,
dedup.ID_VIAGGIO_OCTO,
dedup.DATA_ORA_PARTENZA,
dedup.DATA_ORA_ARRIVO,
dedup.DATA_INSERIMENTO,
dedup.NUM_LAT_PARTENZA,
dedup.NUM_LONG_PARTENZA,
dedup.NUM_LAT_ARRIVO,
dedup.NUM_LONG_ARRIVO,
dedup.NUM_LIVELLO_GPS_PARTENZA,
dedup.NUM_LIVELLO_GPS_ARRIVO,
dedup.NUM_DURATA_VIAGGIO,
dedup.NUM_DISTANZA_VIAGGIO,
dedup.COD_PROVINCIA_PARTENZA,
dedup.DESC_VIA_PARTENZA,
dedup.DESC_COMUNE_PARTENZA,
dedup.COD_CAP_PARTENZA,
dedup.COD_PROVINCIA_ARRIVO,
dedup.DESC_VIA_ARRIVO,
dedup.DESC_COMUNE_ARRIVO,
dedup.COD_CAP_ARRIVO,
dedup.DESC_STRADA_PARTENZA,
dedup.DESC_STRADA_ARRIVO,
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
dedup.ID_CRASH_ASSISTENZA,
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
dedup.NUM_DURATA_EVENTO,
dedup.ID_CRASH,
dedup.ID_ELABORAZIONE,
dedup.NUM_LAT_CRASH,
dedup.NUM_LONG_CRASH,
dedup.NUM_VEL_GPS,
dedup.NUM_QUADRO,
dedup.NUM_FLAG,
dedup.ORA_CRASH,
dedup.NUM_ORIGINE_DATO,
dedup.ID_GYR,
dedup.ID_ELABORAZIONE,
dedup.VEL_ANG_X,
dedup.VEL_ANG_Y,
dedup.VEL_ANG_Z,
dedup.VEL_ANG_MED,
dedup.ORA_CRASH,
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
dedup.NUM_STATO_QUADRO