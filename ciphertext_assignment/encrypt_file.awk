#! /usr/bin/awk -f

BEGIN{
  line=""
  original_sequence="a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z"
  jumbled_sequence= "Z,E,J,O,T,Y,D,I,N,S,X,C,H,M,R,W,B,G,L,Q,V,A,F,K,P,U"
  split(original_sequence,originals, ",")
  split(jumbled_sequence,jumbled, ",")
}

{
  line=tolower($0)
  gsub("0", "zero", line)
  gsub("1", "one",line)
  gsub("2", "two", line)
  gsub("3", "three", line)
  gsub("4", "four", line)
  gsub("5", "five",line)
  gsub("6", "six", line)
  gsub("7", "seven", line)
  gsub("8", "eight", line)
  gsub("9", "nine", line)

  for(i=1; i<=length(originals); i++)
  {
    gsub(originals[i], jumbled[i], line)
  }
  gsub(/[^[:alnum:]^[:blank:]]*/, "", line)
  lines=lines""line
}

END{
  print lines
}
