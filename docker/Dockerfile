FROM daskdev/dask-notebook:2021.10.0-py3.8
RUN apt update && apt install curl git ssh cmake ack g++ vim tmux gnupg2 -yq
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/qooba/vim-python-ide/master/setup.sh)"

RUN git clone -b feature/dask https://github.com/qooba/feast.git
RUN cd feast && make install-python-ci-dependencies
RUN cd feast/sdk/python && pip install -e .

COPY requirements.txt .
RUN pip install -r requirements.txt
RUN mkdir /home/jovyan/feast-dask/ && chown 1000:100 -R feast-dask
COPY --chown=1000:100 feast-dask.ipynb /home/jovyan/feast-dask/feast-dask.ipynb  
USER root
