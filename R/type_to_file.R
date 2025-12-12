#' Convert text from the R console and save it to a file
#'
#' @param size Numeric. Height of each ASCII letter (from `configure()`).
#' @param char_library List. Character library created by `load_files()`.
#' @param filename Character. Path to the output file.
#'
#' @returns None, ASCII text is appended to the provided file.
#' @export
#' 
#' @importFrom purrr map
#'
#' @examples
#' \dontrun{
#' a <- asciiConverter::configure()
#' b <- asciiConverter::load_files(a[[2]], a[[1]])
#' type_to_file(7, b, a[[4]])
#' #now type something and press enter twice, then check the file
#' }
type_to_file <- function(size, char_library, filename){
  if(missing(filename) || !is.character(filename) || nchar(filename) == 0) {
    stop("A valid filename must be provided.")
  }
  
  dir_path <- dirname(filename)
  if(!dir.exists(dir_path)) {
    stop(paste("Directory does not exist:", dir_path))
  }
  
  the_string <- scan(what = character())
  v <- map(the_string, asciiConverter::string_convert)
  for(x in 1:length(v)){
    asciiConverter::write_all_lines(v[[x]], size, char_library, filename)
  }
}