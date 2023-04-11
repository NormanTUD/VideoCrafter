FROM wawa9000/videocrafter:latest-xformers
ENV DEBIAN_FRONTEND noninteractive

# Copy models
COPY ./models /VideoCrafter/models

RUN python -c "from transformers import CLIPTokenizer; CLIPTokenizer.from_pretrained('openai/clip-vit-large-patch14')"
RUN python -c "from transformers import CLIPTextModel; CLIPTextModel.from_pretrained('openai/clip-vit-large-patch14')"