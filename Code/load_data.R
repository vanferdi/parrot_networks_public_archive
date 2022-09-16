
# load common functions
source("./Code/function_library.R")

##########################################################################################
# load main dataset

d <- read.csv("./Data/evendays_dataset.csv", header = TRUE, sep = ",")
nrow(d)  # 7362 rows

# remove unstandardized spots (removes 5 entries)
d <- filter_spots(d,spots)
nrow(d)  # 7357

# check the spots
table(d$Spot)
" 1A   1B   1C   2A   2B   2C   3A   3B  3B1  3B2   3C 
2339  582   15  788  222 1962  135   50  108  138 1018"

# check the dates
sort(d$Rdate)[1]       # first date: 2002-10-02
tail(sort(d$Rdate),1)  # last date:  2012-12-20

# this is what the first 3 rows of data should look like:
head(d,3)
"       Rdate Xhr.dectime Spot BHPA BYMA CFMA DHPA MEPA OCPA RBMA RGMA SCMA WBPA WEPA YCPA
1 2002-10-02    5.500000   3B    0    6   28    0    0    0    8    0    0    0    0    8
2 2002-10-02    5.583333   3A    1    0    1    0    0    0    9    0    0    0    0    4
3 2002-10-02    5.583333   3B    0   22    1    0    0    0    0    0   10    0    0    8"

##########################################################################################