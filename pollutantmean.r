pollutantmean <- function(directory, pollutant, id = 1:332) {
  if(pollutant == "nitrate") {
    column <- 3
  }
  if(pollutant == "sulfate") {
    column <- 2
  }
  allfiles <- list.files(directory) 
  
  pollutantdata <- c()
  
  for(i in id){
    filepath = paste(directory, allfiles[i], sep = "/")
    pollutantdata <- append(pollutantdata, read.csv(filepath)[, column])
  }
  mean(pollutantdata, na.rm = TRUE)
}