INSERT OVERWRITE TABLE %s.%s 
SELECT
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
dedup.NUM_OFFSET
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
dedup.NUM_OFFSET