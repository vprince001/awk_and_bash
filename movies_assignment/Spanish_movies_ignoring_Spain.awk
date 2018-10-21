#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

($8~/Spanish/&&$9!~/Spain/){
  count++;
}

END{
  print count
}

