test_that("read_first_lines returns correct first lines", {
  
  file1 <- tempfile(fileext = ".txt")
  file2 <- tempfile(fileext = ".txt")
  
  writeLines(c("Hello", "Second line"), file1)
  writeLines(c("ASCII art", "Another line"), file2)
  
  expected <- c(
    setNames("Hello", basename(file1)),
    setNames("ASCII art", basename(file2))
  )
  
  result <- read_first_lines(c(file1, file2))
  
  expect_equal(unname(result), c("Hello", "ASCII art"))
  
  expect_equal(names(result), c(file1, file2))
})