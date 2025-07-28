test_that("MCMC works with all available proposals", {

  # Test MCMC with custom Metropolis proposal
  run_mcmc_m_proposal()
  sampler_output = ilike::load_mcmc_output("mcmc_m_proposal")
  expect_equal(signif(mean(sampler_output$Value), digits = 2), 1)
  expect_equal(signif(var(sampler_output$Value), digits = 2), signif(1/(1+1), digits = 2))
  unlink("mcmc_m_proposal", recursive=TRUE)
})
