context("Two parameter box cox transform")

test_that("At least numeric values work.For lambda1 is not zero", {
  num_vec <- c(2:4)
  lambda1 <- 2
  lambda2 <- 3
  expect_identical(box2cox_2parameter(num_vec,lambda1,lambda2), ((num_vec+lambda2)^lambda1 - 1) / lambda1)
  
})

test_that("At least numeric values work.For lamba1 equals to zero", {
  num_vec <- c(1:3)
  lambda1 <- 0
  lambda2 <- 2
  expect_identical(box2cox_2parameter(num_vec,lambda1,lambda2), log(num_vec+lambda2))
  
})

test_that("At least numeric values work.For input is less than zero", {
  num_vec <- c(-3:-1)
  lambda1 <- 2
  lambda2 <- 3
  expect_identical(box2cox_2parameter(num_vec,lambda1,lambda2), (((num_vec+4)+lambda2)^lambda1 - 1) / lambda1)
  
})

test_that("Logicals automatically convert to numeric.For lambda is not zero", {
  logic_vec <- c(TRUE, TRUE, FALSE)
  lambda1 <- 2
  lambda2 <- 3
  expect_identical(box2cox_2parameter(logic_vec,lambda1,lambda2), ((logic_vec+lambda2)^lambda1 - 1) / lambda1)
  
})

test_that("Logicals automatically convert to numeric.For lambda equals to zero", {
  logic_vec <- c(TRUE, TRUE, FALSE)
  lambda1 <- 0
  lambda2 <- 2
  expect_identical(box2cox_2parameter(logic_vec,lambda1,lambda2), log(logic_vec+lambda2))
})


