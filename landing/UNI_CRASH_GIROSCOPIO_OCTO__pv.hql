cast (ID_CRASH_GIR as decimal(31,0)) as ID_CRASH_GIR ,
cast (NUM_GIR_X as decimal(8,4)) as NUM_GIR_X ,
cast (NUM_GIR_Y as decimal(8,4)) as NUM_GIR_Y ,
cast (NUM_GIR_Z as decimal(8,4)) as NUM_GIR_Z ,
cast (DATA_ORA_POSIZIONE as timestamp ) as DATA_ORA_POSIZIONE ,
cast (ID_RICHIESTA as decimal(31,0)) as ID_RICHIESTA ,
cast (ID_CRASH_OCTO as decimal(31,0)) as ID_CRASH_OCTO ,
DATA_ORA_SINISTRO,
split(DATA_ORA_SINISTRO,'-')[0] as anno, 
weekofyear(DATA_ORA_SINISTRO) as week