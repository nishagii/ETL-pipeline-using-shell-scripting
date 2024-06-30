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

# Load phase
echo "Loading data"

# Send the instructions to connect to database(etldb) and
#copy the file to the table 'access_log' through command pipeline.

echo "\c load;\COPY access_log  FROM '/Users/nishagi/myStuff/shellScriptPipeline/transformed-data.csv' DELIMITERS ',' CSV HEADER;" | psql --username=postgres --host=localhost
