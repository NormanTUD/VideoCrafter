#!/bin/bash

set -e

mkdir -p models/base_t2v
mkdir -p models/videolora
mkdir -p models/adapter_t2v_depth

curl -L -z models/base_t2v/model.ckpt -o models/base_t2v/model.ckpt https://huggingface.co/VideoCrafter/t2v-version-1-1/resolve/main/models/base_t2v/model.ckpt
curl -L -z models/videolora/lora_001_Loving_Vincent_style.ckpt -o models/videolora/lora_001_Loving_Vincent_style.ckpt https://huggingface.co/VideoCrafter/t2v-version-1-1/resolve/main/models/videolora/lora_001_Loving_Vincent_style.ckpt
curl -L -z models/videolora/lora_002_frozenmovie_style.ckpt -o models/videolora/lora_002_frozenmovie_style.ckpt https://huggingface.co/VideoCrafter/t2v-version-1-1/resolve/main/models/videolora/lora_002_frozenmovie_style.ckpt
curl -L -z models/videolora/lora_003_MakotoShinkaiYourName_style.ckpt -o models/videolora/lora_003_MakotoShinkaiYourName_style.ckpt https://huggingface.co/VideoCrafter/t2v-version-1-1/resolve/main/models/videolora/lora_003_MakotoShinkaiYourName_style.ckpt
curl -L -z models/videolora/lora_004_coco_style.ckpt -o models/videolora/lora_004_coco_style.ckpt https://huggingface.co/VideoCrafter/t2v-version-1-1/resolve/main/models/videolora/lora_004_coco_style.ckpt
curl -L -z models/videolora/lora_004_coco_style_v2.ckpt -o models/videolora/lora_004_coco_style_v2.ckpt https://huggingface.co/VideoCrafter/t2v-version-1-1/resolve/main/models/videolora/lora_004_coco_style_v2.ckpt
curl -L -z models/adapter_t2v_depth/dpt_hybrid-midas.pt -o models/adapter_t2v_depth/dpt_hybrid-midas.pt https://github.com/isl-org/DPT/releases/download/1_0/dpt_hybrid-midas-501f0c75.pt
curl -L -z models/adapter_t2v_depth/adapter.pth -o models/adapter_t2v_depth/adapter.pth https://huggingface.co/VideoCrafter/t2v-version-1-1/resolve/main/models/adapter_t2v_depth/adapter.pth
