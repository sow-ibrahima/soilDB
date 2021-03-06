% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ISSR800.R
\name{ISSR800.wcs}
\alias{ISSR800.wcs}
\title{ISSR-800 Web Coverage Service (WCS)}
\usage{
ISSR800.wcs(aoi, var, res = 800, quiet = FALSE)
}
\arguments{
\item{aoi}{area of interest (AOI) defined using a \code{Spatial*}, a \code{sf}, \code{sfc} or \code{bbox} object or a \code{list}, see details}

\item{var}{ISSR-800 grid name, see details}

\item{res}{grid resolution, units of meters. The native resolution of ISSR-800 grids (this WCS) is 800m.}

\item{quiet}{logical, passed to \code{download.file} to enable / suppress URL and progress bar for download.}
}
\value{
\code{raster} object containing indexed map unit keys and associated raster attribute table
}
\description{
Intermediate-scale gridded (800m) soil property and interpretation maps from aggregated SSURGO and STATSGO data. These maps were developed by USDA-NRCS-SPSD staff in collaboration with UCD-LAWR. Originally for educational use and \href{https://casoilresource.lawr.ucdavis.edu/soil-properties/}{interactive thematic maps}, these data are a suitable alternative to gridded STATSGO-derived thematic soil maps. The full size grids can be \href{https://casoilresource.lawr.ucdavis.edu/soil-properties/download.php}{downloaded here}.
}
\details{
\code{aoi} should be specified as either a \code{Spatial*}, \code{sf}, \code{sfc} or \code{bbox} object or a \code{list} containing:

\describe{
  \item{\code{aoi}}{bounding-box specified as (xmin, ymin, xmax, ymax) e.g. c(-114.16, 47.65, -114.08, 47.68)}
  \item{\code{crs}}{coordinate reference system of BBOX, e.g. '+init=epsg:4326'}
}

The WCS query is parameterized using \code{raster::extent} derived from the above AOI specification, after conversion to the native CRS (EPSG:6350) of the ISSR-800 grids.

Variables available from this WCS can be queried using \code{WCS_details(wcs = 'ISSR800')}.
}
\note{
There are still some issues to be resolved related to the encoding of NA Variables with a natural zero (e.g. SAR) have 0 set to NA.
}
\author{
D.E. Beaudette and A.G. Brown
}
