#' Convert String to Vector of utf8 values
#'
#' @param x The input string
#'
#' @importFrom purrr map
#'
#' @returns A double vector with the same length as x
#' @export
#'
#' @examples
#' string_convert("ABCD")
string_convert <- function(x){
  x <- strsplit(x, "")
<<<<<<< HEAD
  y <- purrr::map(x, utf8ToInt)
  return(y - 32)
=======
  y <- purrr::map(x[[1]], utf8ToInt)
  z <- unlist(y)
  return(z-32)
>>>>>>> 488791bdc8f25284edec3938dcfb234b57c82492
}