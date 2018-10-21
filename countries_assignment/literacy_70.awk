#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

($10>70){
  count++;
}

END{
  print count
}
