#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

($2~/EUROPE/){
  count++;
}

END{
  print count
}
