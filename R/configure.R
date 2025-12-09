x <- c("space.txt","bang.txt","dbl_quote.txt","hash.txt","dollar.txt","percent.txt"
       ,"ampersand.txt","apostrophe.txt" ,"left_paren.txt","right_paren.txt","star.txt"
       ,"plus.txt","comma.txt","dash.txt","dot.txt","right_slash.txt","0.txt","1.txt"
       ,"2.txt","3.txt","4.txt","5.txt","6.txt","7.txt","8.txt","9.txt","colon.txt"
       ,"semicolon.txt","left_angle.txt","equals.txt","right_angle.txt","q_mark.txt","at.txt"
       ,"A.txt", "B.txt", "C.txt", "D.txt", "E.txt", "F.txt", "G.txt", "H.txt","I.txt",
       "J.txt", "K.txt", "L.txt", "M.txt", "N.txt", "O.txt", "P.txt", "Q.txt", "R.txt"
       ,"S.txt","T.txt","U.txt","V.txt","W.txt","X.txt","Y.txt","Z.txt","left_bracket.txt"
       ,"left_slash.txt","right_bracket.txt","up.txt","underscore.txt","backtick.txt"
       ,"la.txt","lb.txt","lc.txt","ld.txt","le.txt","lf.txt","lg.txt","lh.txt","li.txt"
       ,"lj.txt","lk.txt","ll.txt","lm.txt","ln.txt","lo.txt","lp.txt","lq.txt","lr.txt"
       ,"ls.txt","lt.txt","lu.txt","lv.txt","lw.txt","lx.txt","ly.txt","lz.txt")
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
  return(list(filenames, directory, offset_1, size))
}