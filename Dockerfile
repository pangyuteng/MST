FROM pytorch/pytorch:2.4.1-cuda12.1-cudnn9-devel

RUN apt-get update && apt-get install git vim curl -yq

COPY requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt


ENV HF_HOME=/opt/.huggingface
RUN mkdir -p /opt/.huggingface && chmod 777 -R /opt/.huggingface

ENV TORCH_HOME=/tmp/.torch
ENV XDG_CACHE_HOME=/tmp/.xdgcache
ENV TORCH_COMPILE_DEBUG_DIR=/tmp/.torchdebug
ENV TORCHINDUCTOR_CACHE_DIR=/tmp/.torchinductor
ENV TRITON_HOME=/tmp/.tritonhome
ENV TRITON_CACHE_DIR=/tmp/.triton

