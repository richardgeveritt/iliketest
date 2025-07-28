test_is_prior_as_proposal_z <- function()
{
  # IS estimation of normalising constant
  filename = system.file("extdata", "test_is_prior_as_proposal.ilike", package = "ilike")
  recipe = ilike::compile(filename)
  output = ilike::IS(recipe,results_name="is_prior_as_proposal",number_of_importance_points=1000000,seed=2)
  return(output)
}

test_is_prior_as_proposal_mean <- function()
{
  # IS estimation of mean
  sampler_output = ilike::load_smc_output("is_prior_as_proposal")
  return(sum(sampler_output$Value*exp(sampler_output$LogWeight)))
}

test_is_prior_as_proposal_var <- function()
{
  # IS estimation of mean
  sampler_output = ilike::load_smc_output("is_prior_as_proposal")
  m = sum(sampler_output$Value*exp(sampler_output$LogWeight))
  return(sum((sampler_output$Value-m)^2*exp(sampler_output$LogWeight)))
}

test_is_custom_proposal_z <- function()
{
  # testing both the functions in distributions.h and also the evaluate_log function
  filename = system.file("extdata", "test_is_custom_proposal.ilike", package = "ilike")
  recipe = ilike::compile(filename)
  output = ilike::IS(recipe,results_name="is_custom",number_of_importance_points=1000000,seed=2)
  return(output)
}

test_is_custom_proposal_mean <- function()
{
  # IS estimation of mean
  sampler_output = ilike::load_smc_output("is_custom")
  return(sum(sampler_output$Value*exp(sampler_output$LogWeight)))
}

test_is_custom_proposal_var <- function()
{
  # IS estimation of mean
  sampler_output = ilike::load_smc_output("is_custom")
  m = sum(sampler_output$Value*exp(sampler_output$LogWeight))
  return(sum((sampler_output$Value-m)^2*exp(sampler_output$LogWeight)))
}
