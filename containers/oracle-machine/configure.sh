echo loading ssh for oramachine$1 at localhost:$(($1 + 2200))
../../tools/putty.exe -ssh root:admin@localhost $(($1 + 2200))