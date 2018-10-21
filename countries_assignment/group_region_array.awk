#! /usr/bin/awk -f

BEGIN{
  FS="|"
};

{
  regions[$2]=regions[$2]"\n"$1;
}

END{
  for(region in regions)
  {
    print region":"regions[region]"\n"
  }
}
