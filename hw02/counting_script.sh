#!/bin/bash

echo "Print the number of .txt files in names/"
ls -l names/*.txt | wc -l

echo "Print the total number of lines across all text files in names/"
wc -l names/*.txt | tail -1
   
echo "Print the number of lines containing 'Pat' across all files."  
grep "Pat" names/*.txt | wc -l

echo "Print the number of lines containing 'Pat' as a boy across all files."  
grep "Pat" names/*.txt | grep M | wc -l

echo "Print the number of lines containing 'Pat' as a girl across all files."  
grep "Pat" names/*.txt | grep F | wc -l