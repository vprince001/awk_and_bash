#! /usr/bin/awk -f

BEGIN{
  FS="|"
  area=0
};

{
  area=area+$4;
}

END{
  print area
}
