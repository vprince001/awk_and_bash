#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

($2~/ASIA/){
  count++;
}

END{
  print count
}
