#! /usr/bin/awk -f

BEGIN{
  FS="|"
};

{
  countries[$1]++;
}

END{
  for(i in countries){
    print i
  }
}
