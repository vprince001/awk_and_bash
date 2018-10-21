#! /usr/bin/awk -f

BEGIN{
  FS="|"
  countries=""
};

($6==0){
  countries=$1"\n"countries;
}

END{
  print countries
}
