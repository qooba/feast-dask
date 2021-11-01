#!/bin/bash

docker run --name feast -d --rm -p 8888:8888 -p 8787:8787 qooba/feast:dask 
#/bin/bash -c "jupyter lab --notebook-dir=/home/jovyan --ip='0.0.0.0' --port=8888 --no-browser --allow-root --NotebookApp.password='' --NotebookApp.token=''"
