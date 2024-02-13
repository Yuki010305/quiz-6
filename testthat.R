install.packages("testthat")
library("testthat")

german_cities <- c("Berlin", "Hamburg", "Munich", "Cologne", "Frankfurt", "Rostock")

library("testthat")
test_that("german_cities contains exactly the specified cities", {
  expected_cities <- c("Berlin", "Hamburg", "Munich", "Cologne", "Frankfurt", "Rostock")
  expect_equal(sort(german_cities), sort(expected_cities))
})

test_that("german_cities contains exactly the specified cities", {
  expected_cities <- c("Berlin", "Hamburg", "Munich", "Cologne", "Frankfurt", "Rostock")
  expect_equal(sort(german_cities), sort(expected_cities))
})
test_that("german_cities contains no duplicate entries", {
  expect_equal(length(german_cities), length(unique(german_cities)))
})
test_that("german_cities is a character vector", {
  expect_true(is.character(german_cities))
})
