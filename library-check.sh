#!/bin/bash

for lib in lib{gmp,mpfr,mpc}.la; do
    eaho $lib: $(if find /usr/lib* -name $lib | grep -q $lib;then :; else echo not; fi) found 
done
unset lib
