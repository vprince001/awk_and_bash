#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

($9>20000&&$10<90){
  count++;
}

END{
  print count
}
