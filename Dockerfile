ARG BASE_CONTAINER=jupyter/datascience-notebook:notebook-6.0.3
FROM $BASE_CONTAINER

USER $NB_UID

RUN R -e "install.packages('raster',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('sp',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('devtools',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('maptools',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('dplyr',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('tidyr',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('stringr',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('readxl',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('openxlsx',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rasterVis',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('spatstat',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('latticeExtra',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('deldir',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('dismo',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('fields',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('geosphere',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('RandomFields',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('randomForest',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rpart',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('sf',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('spdep',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('XML',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('spData',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('kernlab',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('Rwofost',dependencies=TRUE, repos='http://R-Forge.R-project.org')"
RUN R -e "install.packages('RStoolbox',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('hsdar',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('spDataLarge',repos='https://nowosad.github.io/drat/', type='source')"

RUN pip install shapely
RUN pip install geopandas
RUN pip install rasterio
RUN pip install pcse

USER root

RUN apt-get update
RUN apt-get apt-get install unrar
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
RUN apt-get update
RUN apt-get install gdal-bin -y
RUN apt-get install libgdal-dev -y
RUN export CPLUS_INCLUDE_PATH=/usr/include/gdal
RUN export C_INCLUDE_PATH=/usr/include/gdal
RUN apt-get install libproj-dev libgdal-dev -y
RUN apt-get install gdal-bin proj-bin libgdal-dev libproj-dev -y
RUN conda install --quiet --yes 'r-rgdal'
RUN conda install --quiet --yes 'r-rgeos'
RUN conda install --quiet --yes 'r-geojsonio'
RUN conda install --quiet --yes 'r-spdep'
RUN conda install --quiet --yes 'r-rcolorbrewer'
RUN conda install --quiet --yes 'r-ncdf4'
RUN conda install -c conda-forge r-velox
RUN apt-get remove pkg-config -y
ENV PROJ_LIB="/opt/conda/share/proj"
ADD libraries.R libraries.R
RUN Rscript libraries.R


USER $NB_UID
RUN R -e "install.packages('hsdar',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('landsat',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('spgwr',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('rpart',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('RStoolbox',dependencies=TRUE, repos='http://cran.rstudio.com/')"


RUN pip install GDAL==$(gdal-config --version | awk -F'[.]' '{print $1"."$2}')
RUN pip install jupyterhub==1.0.0
ADD extra/maxent.jar /opt/conda/lib/R/library/dismo/java/maxent.jar

