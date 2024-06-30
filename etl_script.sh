#Extract phase
echo "Extracting data"

#Extracting the columns 1 (timestamp), 2 (latitude), 3 (longitude) and 
# 4 (visitorid)

cut -d"#" -f1-4 webserver-access-log.txt>extracted_data.txt

#Transform phase
echo "Transforming data"

#reading the extracted data and replace the colons with commas
#write it to csv file

tr "#" "," < extracted_data.txt>transformed_data.csv

