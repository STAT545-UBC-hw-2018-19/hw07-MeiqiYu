context("reverse box cox transform")

test_that("At least numeric values work.For lambda is not zero", {
  num_vec <- c(2:4)
  lambda <- c(1:3)
  expect_identical(box2cox_reverse(num_vec,lambda), (lambda*num_vec + 1) ^ (1/lambda))
  
})


test_that("At least numeric values work.For lamba equals to zero", {
  num_vec <- c(1:3)
  lambda <- c(0,0,0)
  expect_identical(box2cox_reverse(num_vec,lambda),exp(num_vec))
  
})

test_that("Logicals automatically convert to numeric.For lambda is not zero", {
  logic_vec <- c(TRUE, TRUE, FALSE)
  lambda <- c(1:3)
  expect_identical(box2cox_reverse(logic_vec,lambda), (lambda*logic_vec + 1) ^ (1/lambda))
})


test_that("Logicals automatically convert to numeric.For lambda equals to zero", {
  logic_vec <- c(TRUE, TRUE, FALSE)
  lambda <- c(0,0,0)
  expect_identical(box2cox_reverse(logic_vec,lambda), exp(logic_vec))
})