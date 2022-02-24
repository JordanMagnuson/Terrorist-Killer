if (alarmExplodeSet)
  alarmExplode -= 1; 

if (alarmExplodeSet and alarmExplode <= 0)
  instance_change(oExplosion,true);

