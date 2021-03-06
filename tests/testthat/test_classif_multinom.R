context("classif.multinom")

skip_if_not_installed("nnet")

test_that("autotest", {
  learner = mlr3::lrn("classif.multinom")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
