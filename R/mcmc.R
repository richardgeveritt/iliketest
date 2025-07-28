run_mcmc_m_proposal <- function()
{
  filename_model = system.file("extdata", "test_gaussian_posterior.ilike", package = "ilike")
  filename_mcmc = system.file("extdata", "test_m_proposal.ilike", package = "ilike")
  recipe = ilike::compile(c(filename_model, filename_mcmc))
  ilike::MCMC(recipe,results_name="mcmc_m_proposal",seed=2,initial_values = list(list(theta=1)))
}
