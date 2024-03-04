FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime
ENV DEBIAN_FRONTEND noninteractive
ARG COMMIT_HASH
ARG USE_XFORMERS

# Install dependencies
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    libgl1-mesa-glx

RUN cd / && git clone "https://github.com/VideoCrafter/VideoCrafter.git" && cd /VideoCrafter && git checkout $COMMIT_HASH

WORKDIR /VideoCrafter

RUN cd /VideoCrafter && pip install -r requirements_xformer.txt; else cd /VideoCrafter && pip install -r requirements.txt

RUN pip install cog

expose 7860
