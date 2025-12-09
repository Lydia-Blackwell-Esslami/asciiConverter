#' Convert a plaintext file into an ASCII file
#'
#' @param size Character height, from `configure`
#' @param char_library Character library, from `load_files`
#' @param in_file Name of a plaintext file to read
#' @param out_file Name of a txt file to write the output to 
#'
#' @returns None
#' @export
#' 
#' @description
#' It respects newlines and doesn't automatically wrap.
#' 
#'
#' @examples
file_to_file <- function(size, char_library, in_file, out_file){
  the_string <- scan(file = in_file, what = character(), sep = "\n")
  v <- map(the_string, asciiConverter::string_convert)
  for(x in 1:length(v)){
    asciiConverter::write_all_lines(v[[x]], size, char_library, out_file)
  }
}