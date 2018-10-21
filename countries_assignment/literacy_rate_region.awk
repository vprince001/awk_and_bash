#! /usr/bin/awk -f

BEGIN{
  FS="|"
  sum=0
  };
  
  {
    regions[$2]+=($10*$3/100);
    total[$2]+=$3
    
  }

END{
  for(region in regions)
  {
    print region":"(regions[region]/total[region])*100"\n"
  }
}
