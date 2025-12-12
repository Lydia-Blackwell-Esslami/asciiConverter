test_that("configure returns default configuration correctly", {
  results <- configure()
  
  expect_type(results, "list")
  expect_length(results, 4)
  
  expect_true(all(grepl("\\.txt$", results[[1]])))
  expect_type(results[[2]], "character")
  expect_type(results[[3]], "double")
  expect_type(results[[4]], "double")
  
  expect_gt(results[[3]], 0)
  expect_gt(results[[4]], 0)
})