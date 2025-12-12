#' Fully automated animation workflow. Upload your frames, update the settings, and enjoy
#'
#' @param  frames A list of character-library vectors representing each animation frame.
#' @param size The height of each ASCII character (from configure())/
#' 
#' @returns The function prints animated ASCII frames to the console in an infinite loop, therefore there are is no return.
#' @export
#'
#' @examples
#' \dontrun{
#' # Example: simple two-frame animation
#' settings <- asciiConverter::configure()
#' frame1 <- asciiConverter::string_convert("HELLO")
#' frame2 <- asciiConverter::string_convert("hello")
#' 
#' animate(list(frame1, frame2), size = settings[[4]])
#' }
animate <- function(frames, size){
  while(TRUE){
    for(x in 1:length(frames)){
      asciiConverter::make_lines(x, size, frames)
    }
  }
}