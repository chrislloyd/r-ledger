% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/register.r
\name{register}
\alias{register}
\alias{register_beancount}
\alias{register_hledger}
\alias{register_ledger}
\title{Import a ledger, hledger, or beancount register}
\usage{
register(file, ..., toolchain = default_toolchain(file), date = NULL)

register_beancount(file, date = NULL)

register_hledger(
  file,
  flags = "",
  date = NULL,
  add_mark = TRUE,
  add_cost = TRUE,
  add_value = TRUE
)

register_ledger(file, flags = "", date = NULL)
}
\arguments{
\item{file}{Filename for a ledger, hledger, or beancount file.}

\item{...}{Arguments passed on to either \code{register_ledger},
\code{register_hledger}, or \code{register_beancount}}

\item{toolchain}{Toolchain used to read in register.
Either "ledger", "hledger", "beancount", "bean-report_ledger", or "bean-report_hledger".}

\item{date}{End date.
Only transactions (and implicitly price statements) strictly before this date are used.}

\item{flags}{Character vector of additional command line flags to pass
to either \code{ledger csv} or \code{hledger register}.}

\item{add_mark}{Whether to add a column with the mark information.  Only relevant for hledger files.}

\item{add_cost}{Whether to add historical cost columns.  Only relevant for hledger files.}

\item{add_value}{Whether to add market value columns.  Only relevant for hledger files.}
}
\value{
\code{register} returns a tibble.
}
\description{
\code{register} imports the register from a ledger, hledger, or beancount file as a tibble.
}
\examples{
 if (Sys.which("ledger") != "") {
     example_ledger_file <- system.file("extdata", "example.ledger", package = "ledger")
     dfl <- register(example_ledger_file)
     head(dfl)
 }
 if (Sys.which("hledger") != "") {
     example_hledger_file <- system.file("extdata", "example.hledger", package = "ledger")
     dfh <- register(example_hledger_file)
     head(dfh)
 }
 if (Sys.which("bean-query") != "") {
     example_beancount_file <- system.file("extdata", "example.beancount", package = "ledger")
     dfb <- register(example_beancount_file)
     head(dfb)
 }
}
