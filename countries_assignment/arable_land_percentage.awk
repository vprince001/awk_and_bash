#! /usr/bin/awk -f

BEGIN{
  FS="|"
};

{
  land[$12];
}

END{
  for (i in land)
    print i
}
