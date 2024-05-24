# FROM python:3
# Use keras with python 3:
FROM tensorflow/tensorflow:2.16.1

RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    libmysqlclient-dev \
    gfortran libopenblas-dev liblapack-dev \
    libhdf5-dev python3-h5py

COPY requirements-min.txt /tmp
RUN pip install --no-cache-dir -r /tmp/requirements-min.txt
RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

ENTRYPOINT [ "bash" ]
