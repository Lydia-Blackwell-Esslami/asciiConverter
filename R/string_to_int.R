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
  y <- purrr::map(x[[1]], utf8ToInt)
  z <- unlist(y)
  return(z-31)
}