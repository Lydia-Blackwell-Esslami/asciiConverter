#' Convert String to Vector of utf8 values
#'
#' @param x The input string
#'
#' @returns A double vector with the same length as x
#' @export
#'
#' @examples
string_convert <- function(x){
  x <- strsplit(x, "")
  y <- map(x, utf8ToInt)
  return(y-64)
}