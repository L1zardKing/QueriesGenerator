cast (ID_ACC as decimal(31,0)) as ID_ACC ,
cast (ID_ELABORAZIONE as decimal(31,0)) as ID_ELABORAZIONE ,
cast (NUM_ACC_X as decimal(8,4)) as NUM_ACC_X ,
cast (NUM_ACC_Y as decimal(8,4)) as NUM_ACC_Y ,
cast (NUM_ACC_Z as decimal(8,4)) as NUM_ACC_Z ,
cast (NUM_ACC_XY as decimal(8,4)) as NUM_ACC_XY ,
cast (NUM_VEL_ACC as decimal(8,4)) as NUM_VEL_ACC ,
cast (NUM_VEL_GPS as decimal(8,4)) as NUM_VEL_GPS ,
cast (ORA_CRASH as timestamp ) as ORA_CRASH ,
cast (NUM_APP_URTO as bigint) as NUM_APP_URTO ,
DATA_ORA_SINISTRO,
split(DATA_ORA_SINISTRO,'-')[0] as anno, 
weekofyear(DATA_ORA_SINISTRO) as week