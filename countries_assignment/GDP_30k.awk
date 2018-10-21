#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

($9>30000){
  count++;
}

END{
  print count
}
