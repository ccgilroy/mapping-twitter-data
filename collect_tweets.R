library(streamR)
library(ROAuth)
load("credentials/twitCred.Rdata")

# use http://boundingbox.klokantech.com/
# to get a bounding box
africa_bb <- c(-25.4, -47.1, 63.8, 37.5)

# collect tweets for 14 hours
filterStream("data/tweets_africa.json", 
             timeout = 50400, 
             locations = africa_bb, 
             oauth = twitCred)

# parse and save tweets as R object for faster use later
tweets_unfiltered <- parseTweets("data/tweets_africa.json")
saveRDS(tweets_unfiltered, "data/tweets_africa.rds")
