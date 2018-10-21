#! /usr/bin/awk -f

BEGIN{
  FS="|"
  movies=""
};

($9~/Hong Kong/&&$10~/8./){
  movies=$1"|"$10"\n"movies;
}

END{
  print movies
}
