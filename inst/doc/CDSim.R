## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  fig.width = 8,
  fig.height = 4,
  comment = "#>"
)
library(CDSim)

## -----------------------------------------------------------------------------
library(CDSim)

## -----------------------------------------------------------------------------
stations <- create_stations(n = 3, seed = 123)
stations

## -----------------------------------------------------------------------------
sim <- simulate_climate_series(stations, start_year = 2019, end_year = 2024)
head(sim)

## -----------------------------------------------------------------------------
write_station_csv(sim, file = "climate_data.csv")

## -----------------------------------------------------------------------------
write_station_netcdf(sim, out_nc = "climate_data.nc")

## -----------------------------------------------------------------------------
plot_station_timeseries(sim,'Station_1', var = "Avg.Tx")

## -----------------------------------------------------------------------------
validation <- validate_climate_internal(sim)
validation

