test_that("IS works when using the prior as proposal, and when using a custom proposal", {

  # Test IS where prior is used as proposal
  expect_equal(signif(test_is_prior_as_proposal_z(), digits = 2), signif(dnorm(1,1,sqrt(0.25+4),log=TRUE), digits = 2))
  expect_equal(signif(test_is_prior_as_proposal_mean(), digits = 2), 1)
  expect_equal(signif(test_is_prior_as_proposal_var(), digits = 2), signif(1/(1/4+1/0.25), digits = 2))
  unlink("is_prior_as_proposal", recursive=TRUE)

  # Test IS where custom proposal is used
  expect_equal(signif(test_is_custom_proposal_z(), digits = 2), signif(dnorm(1,1,sqrt(0.25+4),log=TRUE), digits = 2))
  expect_equal(signif(test_is_custom_proposal_mean(), digits = 2), 1)
  expect_equal(signif(test_is_custom_proposal_var(), digits = 2), signif(1/(1/4+1/0.25), digits = 2))
  unlink("is_custom", recursive=TRUE)
})
