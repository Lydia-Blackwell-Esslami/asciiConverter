#' Load txt files into memory
#'
#' @param filenames String vector with the names of files to be added
#' @param directory A string specifying the folder containing the ASCII .txt files
#'
#' @returns A list with the same length as the input vector, where each element of the list
#' is a vector and each element of a vector is a line of a file
#' @export
#' 
#' @details
#' Use this to load in the entire library, and then work with it from the output list 
#' 
#' @examples
#' \dontrun{
#' # Load default character library
#' settings <- asciiConverter::configure()
#' char_lib <- load_files(settings$directory, settings$filenames)
#' }

load_files <- function(directory, filenames){
  if(missing(directory) || !dir.exists(directory)) {
    stop(paste("Directory does not exist:", directory))
  }
  
  if(missing(filenames) || length(filenames) == 0) {
    stop("You must provide at least one filename.")
  }
  
  letters_1 <-list()
  for(x in filenames){
    letters_2<- c(scan(file = paste(directory, x, sep = ""), what = character(), sep = "\n", quote = "``"))
    letters_1 <- append(letters_1, list(letters_2))
  }
  return(letters_1)
}