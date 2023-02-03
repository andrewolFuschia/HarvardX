# How many rows and columns are there in the edx dataset?
nrow(edx)
ncol(edx)

#How many zeros and threes were given as ratings?
nrow(edx$rating == "0")
sum(edx$rating == 3)
edx3 <- filter(edx, rating == 3)

#How many different movies are in the edx Dataset.
no_movies <- unique(edx$movieId)
no_movies
length(no_movies)

#uniqueMovies <- length(unique(edx$movieId))
#n_distinct(edx$movieId)
#uniqueMovies


#How many different users are in the edx dataset?
no_users <- unique(edx$userId)
length(no_users)


#How many movie ratings are in each of the following genres in the edx dataset?
#drama
num_drama <- (edx$genres == "Drama")
total_drama <- sum(num_drama=="TRUE")
total_drama

#edx$genres["DRAMA"]

genreList <- c('Drama', 'Comedy', 'Thriller', 'Romance')
genreCounts <- sapply(genreList, function(g){
  edx %>% filter(str_detect(genres, g)) %>% tally()
})

edx %>% separate_rows(genres, sep = "\\|") %>%
  group_by(genres) %>%
  summarize(count = n())

#Comedy
#num_comedy <- (edx$genres == "Comedy")
#total_comedy <- sum(num_drama=="TRUE")
#total_comedy

edx


