[![Build Status](https://travis-ci.org/SCiO-systems/IndexGADM.svg?branch=master)](https://travis-ci.org/SCiO-systems/IndexGADM) [![License: CC0-1.0](https://img.shields.io/badge/License-CC0%201.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/)
[![CGIAR:CSI-CoP](https://img.shields.io/badge/CGIAR-CSI--CoP-brightgreen)](https://bigdata.cgiar.org/communities-of-practice/geospatial-data/)
[![maintainer:SCiO](https://img.shields.io/badge/maintainer-SCiO-blue)](https://scio.systems)



# cgspatial-notebook
`cgspatial-notebook` is a community Jupyter Docker Stack image. The image includes major geospatial Python &amp; R libraries  on top of the datascience-notebook image. It also contains libraries that allow operations over climatic data.



## Try it on Binder

Click on the following badge to launch a notebook on the `https://mybinder.org` service.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/SCiO-systems/cgspatial-notebook/master)

## Docker Hub
* Docker Hub [hub.docker.com/r/scioquiver/notebooks](https://hub.docker.com/r/scioquiver/notebooks)

Docker Pull Command for Docker image.
```
docker pull scioquiver/notebooks:cgspatial-notebook
```


## R Libraries
* [DSSAT](https://cran.r-project.org/package=dismo "DSSAT")
* [Dasst](https://cran.r-project.org/package=dismo "Dasst")
* [anytime](https://cran.r-project.org/package=dismo "anytime")
* [analogues](https://github.com/CIAT-DAPA/analogues "analogues")
* [dssatR](https://github.com/palderman/dssatR/ "dssatR")
* [devtools](https://CRAN.R-project.org/package=devtools "devtools")
* [dismo](https://cran.r-project.org/package=dismo "dismo")
* [dplyr](https://cran.r-project.org/package=dplyr "dplyr")
* [fields](https://cran.r-project.org/package=fields "fields")
* [geosphere](https://cran.r-project.org/package=geosphere "geosphere")
* [gstat](https://cran.r-project.org/package=gstat "gstat")
* [kernlab](https://cran.r-project.org/package=kernlab "kernlab")
* [landsat](https://cran.r-project.org/package=landsat "landsat")
* [latticeExtra](https://cran.r-project.org/package=latticeExtra "latticeExtra")
* [maptools](https://cran.r-project.org/package=maptools "maptools")
* [raster](https://cran.r-project.org/package=raster "raster")
* [rasterVis](https://cran.r-project.org/package=rasterVis "rasterVis")
* [rgdal](https://cran.r-project.org/package=rgdal "rgdal")
* [rgeos](https://cran.r-project.org/package=rgeos "rgeos")
* [RStoolbox](https://cran.r-project.org/package=RStoolbox "RStoolbox")
* [Rwofost](https://rdrr.io/rforge/Rwofost/man/Rwofost-package.html "Rwofost")
* [sp](https://cran.r-project.org/package=sp "sp")
* [spatstat](https://cran.r-project.org/package=spatstat "spatstat")
* [tidyr](https://cran.r-project.org/package=tidyr "tidyr")
* [vroom](https://cran.r-project.org/package=vroom "vroom")
* [future](https://cran.r-project.org/package=future "future")
* [furrr](https://cran.r-project.org/package=furrr "furrr")
* [doSNOW](https://cran.r-project.org/package=doSNOW "doSNOW")
* [earth](https://cran.r-project.org/package=rgeos "earth")
* [FactoMineR](https://cran.r-project.org/package=FactoMineR "FactoMineR")
* [parallelDist](https://cran.r-project.org/package=parallelDist "parallelDist")
* [trend](https://cran.r-project.org/package=trend "trend")
* [climatrends](https://cran.r-project.org/package=climatrends "climatrends")
* [caretEnsemble](https://cran.r-project.org/package=caretEnsemble "caretEnsemble")
* [ggspatial](https://cran.r-project.org/package=ggspatial "ggspatial")
* [adehabitatHR](https://cran.r-project.org/package=adehabitatHR "adehabitatHR")
* [tcltk2](https://cran.r-project.org/package=tcltk2 "tcltk2")
* [ggplot2](https://cran.r-project.org/package=ggplot2 "ggplot2")
* [fastcluster](https://cran.r-project.org/package=fastcluster "fastcluster")
* [foreach](https://cran.r-project.org/package=foreach "foreach")
* [tidyverse](https://cran.r-project.org/package=tidyverse "tidyverse")
* [cluster](https://cran.r-project.org/package=cluster "cluster")
* [stringr](https://cran.r-project.org/package=stringr "stringr")
* [glue](https://cran.r-project.org/package=glue "glue")
* [pacman](https://cran.r-project.org/package=pacman "pacman")
* [purrr](https://cran.r-project.org/package=purrr "purrr")
* [fst](https://cran.r-project.org/package=fst "fst")
* [lubridate](https://cran.r-project.org/package=lubridate "lubridate")
* [sdm](https://cran.r-project.org/package=sdm "sdm")
* [distances](https://cran.r-project.org/package=distances "distances")
* [rlang](https://cran.r-project.org/package=rlang "rlang")
* [gdistance](https://cran.r-project.org/package=gdistance "gdistance")
* [caret](https://cran.r-project.org/package=caret "caret")
* [bindrcpp](https://cran.r-project.org/package=bindrcpp "bindrcpp")
* [proc](https://cran.r-project.org/package=proc "proc")
* [maxnet](https://cran.r-project.org/package=maxnet "maxnet")
* [usdm](https://cran.r-project.org/package=usdm "usdm")
* [tictoc](https://cran.r-project.org/package=tictoc "tictoc")
* [snow](https://cran.r-project.org/package=snow "snow")
* [gtools](https://cran.r-project.org/package=gtools "gtools")
* [domc](https://cran.r-project.org/package=domc "domc")
* [ade4](https://cran.r-project.org/package=ade4 "ade4")
* [doParallel](https://cran.r-project.org/package=doParallel "doParallel")
* [adehabitatHR](https://cran.r-project.org/package=adehabitatHR "adehabitatHR")
* [ggspatial](https://cran.r-project.org/package=ggspatial "ggspatial")
* [doMC](https://cran.r-project.org/package=doMC "doMC")
* [caretEnsemble](https://cran.r-project.org/package=caretEnsemble "caretEnsemble")
* [proj4](https://cran.r-project.org/package=proj4 "proj4")
* [RMAWGEN](https://cran.r-project.org/package=RMAWGEN "RMAWGEN")
* [mclust](https://cran.r-project.org/package=mclust "mclust")
* [fpc](https://cran.r-project.org/package=fpc "fpc")
* [Rquefts](https://cran.r-project.org/package=Rquefts "Rquefts")
* [reshape](https://cran.r-project.org/package=reshape "reshape")
* [genesysr](https://gitlab.croptrust.org/genesys-pgr/genesysr "genesysr")
* [rgbif](https://github.com/ropensci/rgbifc "rgbif")

## Python Libraries

* [Shapely](https://pypi.org/project/Shapely/"Shapely")
* [geopandas](https://pypi.org/project/geopandas/"geopandas")
* [rasterio](https://pypi.org/project/rasterio/"rasterio")
* [PCSE](https://pypi.org/project/PCSE/"PCSE")
* [GDAL](https://pypi.org/project/GDAL/ "GDAL")

# References

## Jupyter Docker Stacks - Community Stack version
This project is developed with the helpful guide of [Jupyter Docker Stacks](https://jupyter-docker-stacks.readthedocs.io/en/latest/). The base container is **jupyter/datascience-notebook** and this **Community Stack** is setup [via the guide.](https://jupyter-docker-stacks.readthedocs.io/en/latest/contributing/stacks.html)
