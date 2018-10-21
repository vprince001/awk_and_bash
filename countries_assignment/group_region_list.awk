#! /usr/bin/awk -f

BEGIN{
  FS="|"
  region="";
  country="";
  list="";
};

(NR==1){
  region=$2;
  list="**********Region is "$2"**********";
}

($2==region){
  country=$1;
}

($2!=region){
  list=list"\n**********Region is "$2"**********";
  country=$1;
  region=$2;
}
{
  list=list"\n"country;
}
END{
  print list
  }
