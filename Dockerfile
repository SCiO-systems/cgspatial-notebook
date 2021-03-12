ARG BASE_CONTAINER=scioquiver/notebooks:cgspatial-notebook
FROM $BASE_CONTAINER


RUN conda uninstall r-base -y
RUN conda install -c conda-forge r-base
RUN conda install -c r r-irkernel

RUN pip install shapely && \
    pip install geopandas && \
    pip install rasterio && \
    pip install ipyleaflet && \
    pip install scikit-learn && \
    pip install scikit-image && \
    pip install xgboost && \
    pip install torch torchvision && \
    pip install Keras && \
    pip install tensorflow && \
    pip install pcse

RUN apt-get update && apt-get install software-properties-common -y
RUN add-apt-repository ppa:ubuntugis/ppa && apt-get update
RUN apt-get install gdal-bin -y && apt-get install libgdal-dev -y
RUN export CPLUS_INCLUDE_PATH=/usr/include/gdal && export C_INCLUDE_PATH=/usr/include/gdal

RUN pip install GDAL==$(gdal-config --version | awk -F'[.]' '{print $1"."$2}') && \
    pip install pyrasterframes==0.8.5 && \
    pip install jupyterhub==1.0.0

RUN apt-get install unrar -y && \
    apt-get install lftp -y && \
    apt-get install libproj-dev -y && \
    apt-get install libgdal-dev -y && \
        apt-get install gdal-bin -y && \
        apt-get install proj-bin -y

RUN conda install -c conda-forge r-velox && \
    conda install -c conda-forge r-rjava

RUN apt-get remove pkg-config -y

ENV PROJ_LIB="/opt/conda/share/proj"

RUN  conda install openjdk=8.0.192=h14c3975_1003 && \
     conda install --quiet --yes 'r-rgdal' && \
     conda install --quiet --yes 'r-rgeos' && \
     conda install --quiet --yes 'r-geojsonio' && \
     conda install --quiet --yes 'r-spdep' && \
     conda install --quiet --yes 'r-rcolorbrewer' && \
     conda install --quiet --yes 'r-ncdf4'

RUN conda install --yes -c conda-forge r-tmaptools  && \
    conda install --yes -c conda-forge r-tmap

ADD libraries.R libraries.R
RUN Rscript libraries.R

ADD extra/maxent.jar /opt/conda/lib/R/library/dismo/java/maxent.jar
