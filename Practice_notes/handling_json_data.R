#handling JSON data

install.packages("jsonlite")
library(jsonlite)
data<-'[
{"Name": "Mukesh", "Age": 25, "Marks": 85},
{"Name": "Amit", "Age": 24, "Marks": 90},
{"Name": "Priya", "Age": 22, "Marks": 78}
]'
json_data<-fromJSON("data")