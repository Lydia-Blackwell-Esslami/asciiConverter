#' Read First Lines
#'
#' @param files A character vector of file paths.
#'
#' @returns A character vector containing the first line of each file.
#' @export
#'
#' @examples
#' \dontrun{
#' read_first_lines(c("file1.txt", "file2.txt"))
#' }

read_first_lines <- function(files) {
  sapply(files, function(f){
    con <- file(f, "r")
    on.exit(close(con))
    line <- readLines(con, n = 1, warn = FALSE)
    if(length(line) == 0) "" else line
  }, USE.NAMES = TRUE)
}
