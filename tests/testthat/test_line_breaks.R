test_that("line_breaks splits a vector correctly", {
  input <- 1:10
  size <- 3
  
  expected <- list(
    c(1,2,3),
    c(4,5,6),
    c(7,8,9),
    c(10)
  )
  
  result <- line_breaks(input, size)
  expect_equal(unname(result), expected)
  
  result2 <- line_breaks(1:2, 5)
  expect_equal(unname(result2), list(c(1,2)))
  
  expect_equal(unname(line_breaks(integer(0), 3)), list())
})