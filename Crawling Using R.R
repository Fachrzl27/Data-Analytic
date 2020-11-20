setwd("D:/Document/Praktik R")

# Install library
install.packages("rtweet")

# Import library 
# ini buat mengaktifkan package yang udah diinstall
library("rtweet")

# Set Keyword, Number of Tweet, language, and etc
keyword <- "iphone SE"
jumlahtweet <- 100
type <- "recent" 
bahasa <- "id"
retweet <- FALSE

# API Token
token <- create_token(
  app = "wachdaaa",
  consumer_key = "pRxBO8OIKRNIsoIYSFUbvTHJ0",
  consumer_secret = "TRU5Sb9n4rZV6h0hyBEsZ0BybE98aTuwLFNC1OXyclSJks62lT",
  access_token = "497768008-HlYmwktzj6HK1zMpt0WHvfdsEqwipB3SxYNaJxm1",
  access_secret = "h1eTIB4uNOvNRBlmrWZEzrKrleHiUixKLVkjxlQhFi1Vo"
)

# Collecting Tweet
crawling <- search_tweets(keyword,
                          n = jumlahtweet,
                          include_rts = retweet,
                          type = type,
                          lang = bahasa,
                          retryonratelimit = FALSE,
)

# Save as CSV
write_as_csv(crawling, "iphone_se.csv", prepend_ids = TRUE, na = "", fileEncoding = "UTF-8")
