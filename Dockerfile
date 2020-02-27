#cgspatial-notebook
ARG BASE_CONTAINER=jupyter/datascience-notebook:notebook-6.0.3
FROM $BASE_CONTAINER

USER $NB_UID

RUN pip install --upgrade jupyterlab-git
RUN jupyter lab build


RUN conda install --yes r-raster
RUN conda install --yes r-sp
RUN conda install --yes r-devtools
RUN conda install --yes r-maptools
RUN conda install --yes r-rgdal
RUN conda install --yes r-rgeos
RUN conda install --yes r-dplyr
RUN conda install --yes r-tidyr
RUN conda install --yes r-stringr
RUN conda install --yes r-readxl
RUN conda install --yes r-openxlsx
RUN conda install --yes r-rasterVis
RUN conda install --yes r-spatstat
RUN conda install --yes r-latticeExtra
RUN conda install --yes r-deldir
RUN conda install --yes r-dismo
RUN conda install --yes r-fields
RUN conda install --yes r-geosphere
RUN conda install --yes r-gstat
RUN conda install --yes r-jsonlite
RUN conda install --yes r-RandomFields
RUN conda install --yes r-randomForest
RUN conda install --yes r-rpart
RUN conda install --yes r-sf
RUN conda install --yes r-spdep
RUN conda install --yes r-XML
RUN conda install --yes r-spData

RUN R -e "install.packages('spgwr',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('kernlab',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('Rwofost',dependencies=TRUE, repos='http://R-Forge.R-project.org')"
RUN R -e "install.packages('RStoolbox',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('landsat',dependencies=TRUE, repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('hsdar',dependencies=TRUE, repos='http://cran.rstudio.com/')"


RUN R -e "install.packages('spDataLarge',repos='https://nowosad.github.io/drat/', type='source')"
RUN R -e "install.packages('RColorBrewer',repos='https://nowosad.github.io/drat/', type='source')"


RUN pip install shapely
RUN pip install geopandas
RUN pip install rasterio
RUN pip install pcse

USER root


RUN apt-get update

RUN apt-get install software-properties-common -y

RUN add-apt-repository ppa:ubuntugis/ppa && sudo apt-get update
RUN apt-get update
RUN apt-get install gdal-bin -y
RUN apt-get install libgdal-dev -y
RUN export CPLUS_INCLUDE_PATH=/usr/include/gdal
RUN export C_INCLUDE_PATH=/usr/include/gdal


ADD libraries.R libraries.R

RUN Rscript libraries.R

USER $NB_UID


RUN pip install GDAL==3.0.0

ADD guides.ipynb /work/guides.ipynb

