#Hands-on Exercise 2
#---------------Exercise starts-----------------
# 1. Download a CSV file from OECD, read it and remove the last row

#Start of problem 1
#Read the OECD file into a data frame
oecd_csv <- read.csv(file="C:\\YYYYYY\\AMMA 2017\\Data\\data_2017\\data_2017\\DP_LIVE_08072017230634515.csv")
oecd_scv <- head(oecd_csv,-1)
#End of problem 1


# 2. Read 2 tables from Wikipedia and find no of ODIs won by India
#Start of problem 2

url = "https://en.wikipedia.org/wiki/India%E2%80%93Pakistan_cricket_rivalry"

file=read_html(url)

#Parse the HTML file to get the table node and store it in a separate variable
table=html_nodes(file,"table")

#Store the required table in a separate table variable
table_final<-html_table(table[2],fill=TRUE)

#Convert into a data frame for easy access
table.df <- as.data.frame(table_final)

#View the data frame
View(table.df)

ODI_wins = table.df$ODI[3]

cat(ODI_wins,"- The number of ODIs won by India")
#End of problem 2

#---------------End of exercise-----------------