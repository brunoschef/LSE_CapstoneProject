# Getting values for days of the week

mondays <- c("6/11", "13/11", "20/11", "27/11", "4/12", "11/12", "18/12", "25/12", "1/1", "8/1",
             "15/1", "22/1", "29/1", "5/2", "12/2", "19/2", "26/2", "4/3", "11/3", "18/3", "25/3",
             "1/4", "8/4", "15/4", "22/4", "29/4")

tuesdays <- c("7/11", "14/11", "21/11", "28/11", "5/12", "12/12", "19/12", "26/12", "2/1", "9/1",
              "16/1", "23/1", "30/1", "6/2", "13/2", "20/2", "27/2", "5/3", "12/3", "19/3", "26/3",
              "2/4", "9/4", "16/4", "23/4", "30/4")

wednesdays <- c("1/11","8/11", "15/11", "22/11", "29/11", "6/12", "13/12", "20/12", "27/12", "3/1", "10/1", "17/1",
                "24/1", "31/1", "7/2", "14/2", "21/2", "28/2", "6/3", "13/3", "20/3", "27/3", "3/4", "10/4",
                "17/4", "24/4", "1/5")

thursdays <- c("2/11", "9/11", "16/11", "23/11", "30/11", "7/12", "14/12", "21/12", "28/12", "4/1", "11/1", "18/1",
               "25/1", "1/2", "8/2", "15/2", "22/2", "29/2", "7/3", "14/3", "21/3", "28/3", "4/4", "11/4",
               "18/4", "25/4")

fridays <- c("3/11", "10/11", "17/11", "24/11", "1/12", "8/12", "15/12", "22/12", "29/12", "5/1", "12/1", "19/1",
             "26/1", "2/2", "9/2", "16/2", "23/2", "1/3", "8/3", "15/3", "22/3", "29/3", "5/4", "12/4",
             "19/4", "26/4")

saturdays <- c("4/11", "11/11", "18/11", "25/11", "2/12", "9/12", "16/12", "23/12", "30/12", "6/1", "13/1", "20/1",
               "27/1", "3/2", "10/2", "17/2", "24/2", "2/3", "9/3", "16/3", "23/3", "30/3", "6/4", "13/4",
               "20/4", "27/4")

sundays <- c("5/11", "12/11", "19/11", "26/11", "3/12", "10/12", "17/12", "24/12", "31/12", "7/1", "14/1", "21/1",
             "28/1", "4/2", "11/2", "18/2", "25/2", "3/3", "10/3", "17/3", "24/3", "31/3", "7/4", "14/4",
             "21/4", "28/4")


# Get two random values for each day of the week
set.seed(123)
random_mondays <- sample(mondays, 2)
random_tuesdays <- sample(tuesdays, 2)
random_wednesdays <- sample(wednesdays, 2)
random_thursdays <- sample(thursdays, 2)
random_fridays <- sample(fridays, 2)
random_saturdays <- sample(saturdays, 2)
random_sundays <- sample(sundays, 2)

# Create a data frame with the values
constructed_week <- data.frame(day = c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"),
                               date = c(paste(random_mondays, collapse = ", "), paste(random_tuesdays, collapse = ", "),
                                        paste(random_wednesdays, collapse = ", "), paste(random_thursdays, collapse = ", "),
                                        paste(random_fridays, collapse = ", "), paste(random_saturdays, collapse = ", "),
                                        paste(random_sundays, collapse = ", ")))

######


# Import the spreadsheet of articles
articles <- read.csv("BornDigitalSample.csv", stringsAsFactors = FALSE)

library(lubridate)

articles$Date <- as.factor(articles$Date)

# Order df by date
articles <- articles[order(dmy(articles$Date)),]

# Randomly select 6 articles per date (if there are 6 or more articles)
articlessubsamp <- articles %>% group_by(Date) %>% sample_n(min(6, n()))

# Write to CSV
install.packages("xlsx")
library(xlsx)
write.xlsx(articlessubsamp, "BornDigitalSampleSubsample.csv", row.names = FALSE)
