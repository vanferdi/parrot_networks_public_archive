
# the 12 species, in alphabetical order
s <- c("BHPA","BYMA","CFMA","DHPA","MEPA","OCPA","RBMA","RGMA","SCMA","WBPA","WEPA","YCPA")
ss <- c("BH","BY","CF","DH","ME","OC","RB","RG","SC","WB","WE","YC")

# body mass of each species, in order of s and ss
grams <- c(247,1125,430,108,610,178,370,1250,1015,155,157,510)

# the list of standardized spots
spots <- c('1A','1B','1C','2A','2B','2C','3A','3B','3B1','3B2','3C') 

filter_spots <- function(df,spots) {
	df <- subset(df,Spot %in% spots)
	df$Spot <- factor(df$Spot)  # drop all factors that have been removed
	return(df)
}

# porting over from private repo in progress...