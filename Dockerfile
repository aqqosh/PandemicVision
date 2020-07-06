FROM python:3-buster

RUN apt install docker-cli
RUN apt install gcc g++ make autoconf

RUN pip install --no-cache-dir \
        cycler==0.10.0 \
        decorator==4.4.2 \
        filterpy==1.4.5 \
        future==0.18.2 \
        imageio==2.8.0 \
        joblib==0.16.0 \
        kiwisolver==1.2.0 \
        llvmlite==0.33.0 \й
        matplotlib==3.2.2 \
        networkx==2.4 \
        numba==0.50.1 \
        numpy==1.19.0 \
        opencv-python==4.2.0.34 \
        pandas==1.0.5 \
        Pillow==7.2.0 \
        plotly==4.8.2 \
        pyparsing==2.4.7 \
        python-dateutil==2.8.1 \
        pytz==2020.1 \
        PyWavelets==1.1.1 \
        retrying==1.3.3 \
        scikit-image==0.17.2 \
        scikit-learn==0.23.1 \
        scipy==1.5.0 \
        six==1.15.0 \
        threadpoolctl==2.1.0 \
        tifffile==2020.6.3 \
        torch==1.5.1+cu101 \
        torchvision==0.6.1+cu101 \

WORKDIR /opt/workspace
COPY . /opt/workspace

RUN chmod +x analize.py -m all -s enabled