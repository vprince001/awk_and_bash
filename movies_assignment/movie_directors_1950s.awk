#! /usr/bin/awk -f

BEGIN{
  FS="|"
  director=""
};

($2~/195/ && director!~$6){
  director=$6"\n"director
}

END{
  print director
}


