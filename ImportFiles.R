# Read CVV file  from local Storage

x = read.csv("myCVDatabase.csv") #Bydefault header is True
y = read.csv("myCVDatabase.csv",header = F) #make header false
z = read.csv("myCVDatabase.csv",header = T) #Make header true
View(x) #To view the dataset
View(y)
View(z)

#Read CVV file By URL

url = "https://www.stats.govt.nz/assets/Uploads/Research-and-development-survey/Research-and-development-survey-2019/Download-data/research-and-development-survey-2019-csv.csv"
readByURL = read.table(url,sep = ',') #sep is seperator by ',' 
View(readByURL) 

#Read data from ExcelSheet 

install.packages('xlsx')
library(xlsx)
readExcel = read.xlsx("myExcelDatabase.xlsx", sheetIndex = 1) #Specifying the sheet igdex from which we need to read the data
readExcel

#Read data from Google Sheet

library('gsheet')
myurl = "https://docs.google.com/spreadsheets/d/1Rpc3BlzK31iJfWICzX1T20xsM_gNaaRUyDp_OxFqj_s/edit?usp=sharing"
abc = as.data.frame(gsheet2tbl(myurl))
abc

write.csv(abc,file = "y") # Export the excel file in csv file using write method

