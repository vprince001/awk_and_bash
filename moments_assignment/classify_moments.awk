#! /usr/bin/awk -f

BEGIN{
  data = "bad,band,boring,bore,can't,can not,changing,change,congest,sleep,unable,fear,not,no ,hard,have to,injur,lack,didn't,low,heavy,leaving,left,miss,too,worst,need,pay,far,hurt,tired,bye,small,slow,hard,typing,lift,rent,foosball,remember,sea,distance"
  split(data,ouch_words,",")
  count=0
}

{
  for(i=1; i<=length(ouch_words); i++){
    if(tolower($0)~ouch_words[i]){
      count++
    }
  }
      if(count>0)
      {
        print "O|"$0
      }
      else
      {
        print "W|"$0
      }
    count=0
}
