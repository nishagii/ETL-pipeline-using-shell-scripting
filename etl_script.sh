#Extract phase
echo "Extracting data"

#Extracting the columns 1 (timestamp), 2 (latitude), 3 (longitude) and 
# 4 (visitorid)

cut -d"#" -f1-4 webserver-access-log.txt>extracted_data.txt