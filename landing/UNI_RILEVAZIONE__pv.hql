cast (ID_RILEVAZIONE) as decimal(31,0) as ID_RILEVAZIONE ,
cast (ID_RICHIESTA) as decimal(31,0) as ID_RICHIESTA ,
cast (ID_CRASH_OCTO) as decimal(31,0) as ID_CRASH_OCTO ,
to date (DATA_ORA_RILEVAZIONE) as DATA_ORA_RILEVAZIONE ,
to date (DATA_INSERIMENTO) as DATA_INSERIMENTO ,
to date (DATA_REGISTRAZIONE) as DATA_REGISTRAZIONE ,
to date (DATA_CONSULTAZIONE) as DATA_CONSULTAZIONE ,
cast (NUM_ACCELERAZIONE) as decimal(5,2) as NUM_ACCELERAZIONE ,
cast (NUM_LAT_DICHIARATO) as decimal(10,6) as NUM_LAT_DICHIARATO ,
cast (NUM_LONG_DICHIARATO) as decimal(10,6) as NUM_LONG_DICHIARATO ,
COD_PROVINCIA ,
DESC_VIA ,
DESC_COMUNE ,
COD_CAP ,
COD_COMPAGNIA ,
DESC_STRADA ,
DESC_INSTALLATORE ,
COD_INSTALLATORE ,
cast (NUM_VOUCHER) as decimal(10,0) as NUM_VOUCHER ,
cast (COD_TIPO_CRASH) as decimal(1,0) as COD_TIPO_CRASH ,
cast (COD_TIPO_ALGORITMO) as decimal(1,0) as COD_TIPO_ALGORITMO ,
cast (COD_DATI_CRASH) as decimal(1,0) as COD_DATI_CRASH ,
FLG_GIORNO_ATTIVAZIONE ,
cast (NUM_LIVELLO_GPS) as bigint as NUM_LIVELLO_GPS ,
FLG_FILTRATO ,
FLG_ASSISTENZA ,
cast (NUM_MAX_ACC) as decimal(5,2) as NUM_MAX_ACC ,
cast (NUM_ANG_URTO) as decimal(4,0) as NUM_ANG_URTO ,
cast (NUM_MAX_ACC_2) as decimal(5,2) as NUM_MAX_ACC_2 ,
cast (NUM_ANG_URTO_2) as decimal(4,0) as NUM_ANG_URTO_2 ,
cast (NUM_MAX_ACC_3) as decimal(5,2) as NUM_MAX_ACC_3 ,
cast (NUM_ANG_URTO_3) as decimal(4,0) as NUM_ANG_URTO_3 ,
cast (DATI_CRASH_CARICATI) as bigint as DATI_CRASH_CARICATI ,
cast (FLG_DEVICE_ATTIVO) as bigint as FLG_DEVICE_ATTIVO ,
cast (ID_CRASH_ASSISTENZA) as decimal(31,0) as ID_CRASH_ASSISTENZA 