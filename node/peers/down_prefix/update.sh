#!/bin/bash
cd /etc/bird/peers/down_prefix
update_prefix () {
  bgpq4 -S RPKI,RIPE,APNIC,ARIN,AFRINIC,LACNIC -6 -b -R 48 -l prefix_$1 $2 > $1.conf.prefix
  if [ ! -s $1.conf.prefix ]; then
    echo "$1 $2 update failed"
    return
  fi
  bgpq4  -S RPKI,RIPE,APNIC,ARIN,AFRINIC,LACNIC -tb -l asn_$1 $2 > $1.conf.asns
  if [ ! -s $1.conf.asns ]; then
    echo "$1 $2 update failed"
    return
  fi

  echo -n "define " > $1.conf
  cat $1.conf.prefix >> $1.conf
  echo "" >> $1.conf
  echo -n "define " >> $1.conf
  cat $1.conf.asns >> $1.conf

  rm $1.conf.prefix
  rm $1.conf.asns
}
update_prefix 200105 as-moeqing

