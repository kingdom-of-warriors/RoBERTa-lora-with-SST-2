#!/bin/bash

# 创建并激活 Conda 环境
conda create -n test python=3.9 -y
source activate test

# 安装 transformers 库
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple transformers==4.39.2

# 安装 cudatoolkit
conda install cudatoolkit==11.8 -y

# 安装 PyTorch 及其相关库
pip3 install numpy --pre torch torchvision torchaudio --force-reinstall --index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 安装 auto-gptq
pip install auto-gptq --no-build-isolation

# 安装其他常用库
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple ipykernel evaluate tqdm scikit-learn

echo "All installations are complete."