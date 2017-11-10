## to ADD text to the BEGINNING of a line
sed 's/^/text to add/g' source.txt > destination.txt
# original file's data will remain unedited

## to ADD text to the END of a line
sed 's/$/text to add/g' source.txt > destination.txt
# original file's data will remain unedited

## to COUNT the number of lines
wc -l source.txt

## to COUNT the number of columns
head -n 1 CG_exprs.txt | awk '{print NF}'

## to DELETE data from a file and replace it with anything
sed 's/tobedeleted//g' old.txt > new.txt
sed 's ..' source.txt > destination.txt
# the second one is abit strange. replace each dot with the character to be removed

## to DELETE columns of data
awk '{print $1,$2,$3}' file
# lol 

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

## to DELETE a particular row and then copy the data back into the same file
sed -i.bak -e '5,10d;12d' file
# deletes lines 5-10 and line 12

## to DELETE specific character in every lines in the file
sed 's/"//g' SUDHL1.txt > SUDHL2.tx
# deletes all occurrences of "

## to GREP (any line in the sourcefile.txt containing the string (text/nu,bers) would be copied...
grep "criteria" sourcefile.txt > destinationfile.txt
# original file's data will remain unedited
# not specific criteria1 or criteriad will still appear
grep -w "criteria" sourcefile.txt > destination file.txt
# speciifically grepping

## to MERGE files into column
## replace delimiter with comma, space or a set of characters
paste -d 'delimiter' file 1 file 2 > newfile

## to REPLACE some data
sed 's/StringToRepalce/Repalcementstring/g' source.txt > destination.txt
# example: sed 's/house/home/g' mortgage.txt > owned.txt
# all occurrences of the string being replaced witll be substituted with the replacement string
# warehouse would become warehome

## to SCP files
scp /Users/charlene/Desktop/FULL_EZH2.txt charlene@atlas.cbis.nus.edu.sg:/mnt/raid0/home/charlene

## to SORT files (alphabetically or numerically ithink)
sort input.txt > output.txt
sort -n input.txt > output.txt
sort -nk2 input.txt > output.txt
# sort numerically by column 2
# all of these sort the numbers digits by digits...:(

## to SPLIT [filename] into separate files each containing (number of lines] lines of data
split -l [number of lines] [filename]
awk '{if ($2 == 1) print $1 }' inputfile
awk '{if ($2 <= 75 && $2 >= 25) print $1,$2}' A.txt > PMA.txt
# http://www.theunixschool.com/2012/06/awk-10-examples-to-split-file-into.html

## to do VLOOKUPish things
join File1.txt File2.txt
join -1 2 -2 1 wine.txt reviews.txt
# ie. common column here is column 2 of the first file and column 1 of the second file.
# need to sort File1 and File2 first if not will have error?
