# official pytorch + GPU image
FROM jupyter/base-notebook:latest

RUN apt-get -y update
RUN apt-get -y install git

# base libs
RUN pip install \
    scikit-learn \
    pandas \
    seaborn \
    jupyterlab \
    jupyterlab_widgets \
    "ipywidgets>=7,<8" \
    jupyter-dash \
    ipykernel
# install stable diffusion from source
RUN pip install git+https://github.com/huggingface/diffusers.git@main

# install utilities
RUN pip install --upgrade transformers scipy ftfy python-slugify

RUN mkdir project
WORKDIR /project
