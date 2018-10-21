#! /usr/bin/awk -f

BEGIN{
  print "welcome"
  print "Player 1 Name"
  getline name1
  print "Player 2 Name"
  getline name2
  print "X is assigned to "name1" and O is assigned to "name2
  line="-+-+-"
  block="1,2,3,4,5,6,7,8,9"
  split(block, blocks, ",")
  print "press enter to start";
  conditions = "1 2 3 4 5 6 7 8 9 1 4 7 2 5 8 3 6 9 1 5 9 3 5 7";
  split(conditions,win," ");
}

(count<9){
  if(count%2==0){
    name = name1
  } else {
  name = name2
  }
  print name"'s turn"
  getline input
  if(blocks[input]!="X" && blocks[input]!="O"){
    if(count%2==0){
      blocks[input]="X"
      count++
    } else {
      blocks[input]="O"
      count++
    }
  } else {
    print "Place already occupied"
  }
  print blocks[1]"|"blocks[2]"|"blocks[3]"\n"line
  print blocks[4]"|"blocks[5]"|"blocks[6]"\n"line
  print blocks[7]"|"blocks[8]"|"blocks[9]
  
  for(i=0;i<24;i+=3){
    if(blocks[win[i+1]]==blocks[win[i+2]] && blocks[win[i+1]]==blocks[win[i+3]]){
      print name " wins"
      exit
    }
  }
  print "Press enter for next turn"
}
(count==9){
  print ""
  print "DRAW"
  exit
}
