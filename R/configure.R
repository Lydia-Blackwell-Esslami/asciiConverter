x <- c("A.txt", "B.txt", "C.txt", "D.txt", "E.txt", "F.txt", "G.txt", "H.txt","I.txt",
       "J.txt", "K.txt", "L.txt", "M.txt", "N.txt", "O.txt", "P.txt", "Q.txt", "R.txt")
y <- "letters/"
#' Edit the character library the package uses
#'
#' @param filenames A vector with the names of all the text files used for conversion
#' @param directory A string containing relative path to the directory where they are stored
#' @param offset_1 A whole number representing the difference between 1 and the decimal code value of the first file
#' @param size The lenght of the files in the library. All files should be the same number of lines, with no trailing blank lines
#'
#' @returns A vector containing the parameters, in the same order. Catch the vector and add it to the global
#' environment, these values will be needed later. 
#' @export
#' 
#' @details
#' It it recommended to run this function with the default arguments unless you are providing a custom character library.
#' For the offset, use 31 to get the full library of printable ASCII characters, 64 to start with uppercase letters,
#' and 96 for a library with only lowercase letters. However, DO NOT change the offset if you are not changing the library.
#' Things will break.
#' 
#'
#' @examples
#' configure()
configure <- function(filenames = x, directory = y, offset_1 = 31, size = 7){
  return(list(filenames, directory, offset_1))
}