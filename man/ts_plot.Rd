% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ts_ggplot.R, R/ts_plot.R
\name{ts_ggplot}
\alias{ts_ggplot}
\alias{ts_plot}
\title{Plot Time Series}
\usage{
ts_ggplot(...)

ts_plot(..., title, subtitle, ylab = "", family = "sans")
}
\arguments{
\item{...}{time series objects, either \code{ts}, \code{xts}, \code{data.frame} or \code{data.table}.}

\item{title}{title (optional)}

\item{subtitle}{subtitle (optional)}

\item{ylab}{ylab (optional)}

\item{family}{font family (optional)}
}
\description{
Plot Time Series
}
\examples{

library(tsbox)
ts_plot(AirPassengers, title = "Airline passengers", 
       subtitle = "The classic Box & Jenkins airline data")
ts_plot(total = ldeaths, female = fdeaths, male = mdeaths)

ts_plot(ts_c(sunspot.month, sunspot.year, lynx))
ts_plot(ts_scale(ts_c(airmiles, co2, JohnsonJohnson, discoveries)))
ts_plot(EuStockMarkets)
ts_plot(sunspot.month, sunspot.year, lynx)
ts_plot(ts_scale(ts_c(Nile, nottem, USAccDeaths)))
\dontrun{
ts_ggplot(AirPassengers, title = "Airline passengers", 
       subtitle = "The classic Box & Jenkins airline data")
ts_ggplot(total = ldeaths, female = fdeaths, male = mdeaths)

ts_ggplot(ts_c(sunspot.month, sunspot.year, lynx))
ts_ggplot(ts_scale(ts_c(airmiles, co2, JohnsonJohnson, discoveries)))
ts_ggplot(EuStockMarkets)
ts_ggplot(sunspot.month, sunspot.year, lynx)
ts_ggplot(ts_scale(ts_c(Nile, nottem, USAccDeaths)))

library(Quandl)
ts_ggplot(Quandl("FRED/GDPMC1", "xts"), title = "US GDP")

library(dataseries)
dta <- ds(c("GDP.PBRTT.A.R", "CCI.CCIIR"), "xts")
ts_ggplot(ts_scale(ts_window(ts_c(`GDP Growth` = ts_pc(dta[, 'GDP.PBRTT.A.R']), 
                            `Consumer Sentiment Index` = dta[, 'CCI.CCIIR']), 
                     start = "1995-01-01")),
       title = "GDP and Consumer Sentiment",
       subtitle = "normalized values")

}
}
