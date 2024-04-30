# FROM python:3.7.7
FROM python:3

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    gfortran libopenblas-dev liblapack-dev \
    libhdf5-dev python3-h5py

ENTRYPOINT [ "bash" ]
