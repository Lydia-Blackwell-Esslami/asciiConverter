#' Fully automated animation workflow. Upload your frames, update the settings, and enjoy
#'
#' @returns
#' @export
#'
#' @examples
animate <- function(frames, size){
  while(TRUE){
    for(x in 1:length(frames)){
      asciiConverter::make_lines(x, size, frames)
    }
  }
}