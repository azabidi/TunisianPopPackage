library(readxl)
#' Tunisian population
#'
#' Takes a governorate and gives the population
#' @param  x
#' @return the number of population for the specified governorate
library(readxl)
y="Gouvernorat de"

pop <-function(x){

ch=paste(y,x,sep = " ")
poprg <- read_excel("pop per region-Tunisie.xlsx")

for (i in 1:nrow(poprg)){
  if (ch==poprg[i,1])
     return(poprg[i,2])


}
  return(message("Governorate not Found!"))
}


