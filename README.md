# dictionary


## to ADD text to the BEGINNING of a line
sed 's/^/text to add/g' source.txt > destination.txt
# original file's data will remain unedited

## to ADD text to the END of a line
sed 's/$/text to add/g' source.txt > destination.txt
# original file's data will remain unedited

## to DELETE data from a file and replace it with anything
sed 's/tobedeleted//g' old.txt > new.txt
sed 's ..' source.txt > destination.txt
# the second one is abit strange. replace each dot with the character to be removed

## to DELETE columns of data
awk command
# lol no brainer way of doing it but it works i think

## to DELETE DUPLICATE lines of data
uniq source.txt > destination.txt
#the data in the source file must be sorted using the sort command before the uniq command is issued

## to DELETE the Nth character within every lines
sed 's/^(.{3}).(.*)/12/' log.txt > log2.txt
# the '3rd' digit from abcde becomes abce. note that the first character has the place number "0"
# original file's data will remain unedited

## to DELETE the FIRST N characters of every line
sed 's.{5} ' source.txt > destination.txt
# to remove the first 5 characters of every line of data

## to DELETE the LAST N characters of every line
sed 's/.{8}$//g' source.txt > destination.txt
# original file's data will remain unedited

## to GREP (any line in the sourcefile.txt containing the string (text/nu,bers) would be copied...
## sorce file remains
grep "criteria" sourcefile.txt > destinationfile.txt

## to MERGE files into column
## replace delimiter with comma, space or a set of characters
paste -d 'delimiter' file 1 file 2 > newfile

## to REPLACE some data
sed 's/StringToRepalce/Repalcementstring/g' source.txt > destination.txt
# example: sed 's/house/home/g' mortgage.txt > owned.txt
# all occurrences of the string being replaced witll be substituted with the replacement string
# warehouse would become warehome

## to SORT files (alphabetically or numerically ithink)
sort input.txt > output.txt
sort -n input.txt > output.txt

## to SPLIT [filename] into separate files each containing (number of lines] lines of data
split -l [number of lines] [filename]
