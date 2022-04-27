# renv setup
system("echo 'RENV_PATHS_LIBRARY_ROOT = ~/.renv/library
' >> .Renviron")
renv::init()

# Pkg extra
usethis::use_mit_license() # or whatever license
usethis::use_testthat()
usethis::use_test("dummy")
usethis::use_git()
usethis::git_vaccinate()
usethis::use_git_protocol("ssh")
usethis::use_github()

# Install and init validator
devtools::install_github("Novartis/shinyValidator")
library(shinyValidator)
## At the root of your R package
use_validator("github")
devtools::document() # update help

# renv::snapshot()
# https://packagemanager.rstudio.com/all/__linux__/focal/latest

# audit_app(scope = "POC")
# audit_app(flow = FALSE, output_validation = FALSE)
