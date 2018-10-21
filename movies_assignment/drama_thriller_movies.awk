#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

($5~/Drama/&&/Thriller/){
  count++;
}

END{
  print count
}
