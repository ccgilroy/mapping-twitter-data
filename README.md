# Visualizing and mapping Twitter data

Connor Gilroy, University of Washington

This module complements the introduction to gathering Twitter data
by showing you how to visualize and map that data. The most important tool
introduced is the `leaflet` package for interactive html-based maps.

The module uses as example data a set of tweets geolocated to Africa, 
which were collected over a several-hour period. 
The structure of the example is inspired by 
[Chapter 7](http://socviz.co/maps.html) of Kieran Healy's online book,
*Data Visualization for Social Science*. 

The examples in this module provide a template for visual exploratory
data analysis which can be applied beyond Twitter data to many kinds 
of digital and spatial data. 

## Using this module

The easiest way to work with this module is as an "R Project." To do this, 
open the folder that you downloaded from Dropbox or Github and click on the
`mapping_tweets.Rproj` file (not the .R file!). This will open the R Project
in RStudio, and make it convenient to access all of the files you need.

See this page for more information on R Projects in RStudio:

https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects

## Technical notes

This module doesn't require Twitter credentials because 
the example data are included. If you want to collect other
tweets, you'll need to use the `streamR` package.

Producing static images of interactive Leaflet maps 
in pdf files requires the `webshot` package:  

```{r}
devtools::install_github("wch/webshot")
webshot::install_phantomjs()
```

This only matters if you want to generate slides from your script, 
so you shouldn't need to worry about it.
