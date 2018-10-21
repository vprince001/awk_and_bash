#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

($2~/20/){
  count++;
}

END{
  print count
}

