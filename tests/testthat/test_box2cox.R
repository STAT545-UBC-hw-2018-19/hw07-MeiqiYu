context("box cox transform")

test_that("At least numeric values work.For lambda is not zero", {
  num_vec <- c(2:4)
  lambda <- c(1:3)
  expect_identical(box2cox(num_vec,lambda), (num_vec^lambda-1)/lambda)
  
})

test_that("At least numeric values work.For lamba equals to zero", {
  num_vec <- c(1:3)
  lambda <- c(0,0,0)
  expect_identical(box2cox(num_vec,lambda), log(num_vec))
  
})

test_that("At least numeric values work.For input is less than zero", {
  num_vec <- c(-3:-1)
  lambda <- c(1:3)
  expect_identical(box2cox(num_vec,lambda), ((num_vec+4)^lambda-1)/lambda)
  
})

test_that("Logicals automatically convert to numeric.For lambda is not zero", {
  logic_vec <- c(TRUE, TRUE, FALSE)
  lambda <- c(1:3)
  expect_identical(box2cox(logic_vec,lambda), (logic_vec^lambda-1)/lambda)
})

test_that("Logicals automatically convert to numeric.For lambda equals to zero", {
  logic_vec <- c(TRUE, TRUE, FALSE)
  lambda <- c(0,0,0)
  expect_identical(box2cox(logic_vec,lambda), log(logic_vec))
})


