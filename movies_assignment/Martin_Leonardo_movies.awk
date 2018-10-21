#! /usr/bin/awk -f

BEGIN{
  FS="|"
  };
  
  ($6~/Martin Scorsese/&&$7~/Leonardo DiCaprio/){
    print $1;
  }
