cast (ID_CRASH_POSIZIONE_OCTO as decimal(31,0)) as ID_CRASH_POSIZIONE_OCTO ,
cast (LAT_RILEVAZIONE as decimal(10,6)) as LAT_RILEVAZIONE ,
cast (LONG_RILEVAZIONE as decimal(10,6)) as LONG_RILEVAZIONE ,
cast (NUM_LIVELLO_GPS as decimal(31,0)) as NUM_LIVELLO_GPS ,
FLAG_CRASH ,
cast (ID_CRASH_OCTO as decimal(31,0)) as ID_CRASH_OCTO ,
cast (DATA_ORA_RILEVAZIONE as timestamp ) as DATA_ORA_RILEVAZIONE ,
cast (VELOCITA_GPS as decimal(10,2)) as VELOCITA_GPS ,
cast (HEADING_GPS as decimal(3,0)) as HEADING_GPS ,
cast (STATO_QUADRO as decimal(1,0)) as STATO_QUADRO ,
cast (ID_RICHIESTA as decimal(31,0)) as ID_RICHIESTA ,
cast (NUM_DIST_INTER as bigint) as NUM_DIST_INTER ,
DATA_ORA_SINISTRO,
split(DATA_ORA_SINISTRO,'-')[0] as anno, 
weekofyear(DATA_ORA_SINISTRO) as week