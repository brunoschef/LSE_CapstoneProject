library(foreign)

# Read in Born digital data
borndigital <- read.csv("BornDigitalSampleSubsample.csv", stringsAsFactors = T)

# Name columns the value of first row
names(borndigital) <- c("outlet", "link", "date", "persorpol", "emotionallang", "framing", "objectivity")

# Drop first row and 7th column
borndigital <- borndigital[-1,]
borndigital <- borndigital[,-8]

# Read in Legacy data
legacy <- read.csv("LegacySampleSubsample.csv", stringsAsFactors = T)

names(legacy) <- c("outlet", "headline", "date", "persorpol", "emotionallang", "framing", "objectivity")



# test for statistically significant differences in emotionally charged language
emotionallang_borndigital <- borndigital$emotionallang
emotionallang_legacy <- legacy$emotionallang

emotionallang_borndigital <- as.numeric(emotionallang_borndigital)
emotionallang_legacy <- as.numeric(emotionallang_legacy)

