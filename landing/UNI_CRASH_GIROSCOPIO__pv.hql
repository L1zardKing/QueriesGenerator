cast (ID_GYR as decimal(31,0)) as ID_GYR ,
cast (ID_ELABORAZIONE as decimal(31,0)) as ID_ELABORAZIONE ,
cast (VEL_ANG_X as decimal(8,4)) as VEL_ANG_X ,
cast (VEL_ANG_Y as decimal(8,4)) as VEL_ANG_Y ,
cast (VEL_ANG_Z as decimal(8,4)) as VEL_ANG_Z ,
cast (VEL_ANG_MED as decimal(8,4)) as VEL_ANG_MED ,
cast (ORA_CRASH as timestamp ) as ORA_CRASH ,
DATA_ORA_SINISTRO,
split(DATA_ORA_SINISTRO,'-')[0] as anno, 
weekofyear(DATA_ORA_SINISTRO) as week