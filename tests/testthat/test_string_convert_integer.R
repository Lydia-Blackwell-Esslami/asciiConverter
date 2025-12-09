library(testthat)
library(purrr)

test_that("string_convert converts string to correct integer vector", {
  
  input <- "ABCD"
  expected <- utf8ToInt(input) - 32
  result <- string_convert(input)
  expect_equal(result, expected)
  
  input2 <- "abc"
  expected2 <- utf8ToInt(input2) - 32
  result2 <- string_convert(input2)
  expect_equal(result2, expected2)

  input3 <- ""
  expected3 <- numeric(0)
  result3 <- string_convert(input3)
  expect_equal(result3, expected3)
})
