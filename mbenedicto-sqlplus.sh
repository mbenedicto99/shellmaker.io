#!/bin/bash

  # Finalidade  : Exec SQL
  # Input       : $0
  # Autor       : Marcos de Benedicto
  # Data        : 19/03/2003
  
. $VARSTD  # Control-M Define

rc ()
{
  
  RC=$1
  
  if [ $RC -ne 0 ]
  then
    echo "ERRO - SQL nao executou"
    exit 1
  else
    echo "OK - SQL concluido."
    exit 0
  fi
}

$ORACLE_HOME/bin/sqlplus -s ${LOC_LOGIN} << EOF > ~/tmp/log.$(date +%Y%m%d-%H%M%S)
update xpot ee set geocode = (select jurdic_code from cost_jurisdiction,cu cj where  cu.customer_id = cc.customer_id 
   and cj.cost_id = cu.costcenter_id) where geocode = 'BR';

update xpot ee set geocode = (select jurdic_code from cost_jurisdiction,cu where cu.customer_id = cc.customer_id
   andcj.cost_id = cu.costcenter_id) where sub_geocode = 'BR';

update xpot ee set geocode = 'I';
commit;
EOF

rc $?
