#' Load txt files into memory
#'
#' @param filenames String vector with the names of files to be added
#'
#' @returns A list with the same length as the input vector, where each element of the list
#' is a vector and each element ofa vector is a line of a file
#' @export
#' 
#' @details
#' Use this to load in the entire library, and then work with it from the output list 
#' 
#' @examples
#' \dontrun{
#'   your_files <- load_files(c("SomeFile.txt", "OtherFile.txt")))
#'   #Intended usage
#'   variables <- configure()
#'   char_library <- load_files(variables[1])
#' }
#' 
#' 
#' 
load_files <- function(filenames){
  letters_1 <-list()
  for(x in filenames){
    letters_2<- c(readLines(x, warn = FALSE))
    letters_1 <- append(letters_1, list(letters_2))
  }
  return(letters_1)
}