#!/bin/bash
#usage examples: (aliased as stgen) 
#in: stgen aAbBcC0123 10; out: C2ccc032Ba
#in: stgen $(printf "%s" {a..z}{A..Z}{0..9}) 100; out: 3oQQHoiVZLZd35y224PJQhc89xY4807AFIl30BkA83ih4sV53aSao8PZ8QIb0TxLW8p2Yd79pSZI8pcv421kvB6F018P4F7hIcY9

#progtest 6 phonebook input gen: stgen +-? 1; printf " "; stgen $(printf "%s" {0..9}) $((RANDOM % 300)); printf " "; stgen $(printf "%s" {a..z}{A..Z}{0..9}) $((RANDOM % 300)) 

chars="$1";
len=$2;
for i in $(seq 1 $len); do
    echo -n "${chars:RANDOM%${#chars}:1}"
done
#echo < uncomment to end output with newline
