#! /usr/bin/awk -f

BEGIN{
  FS="|"
};

(NR<6){
  print $4"|"$1;
}
