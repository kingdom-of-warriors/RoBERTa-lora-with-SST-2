read -p "请输入要创建的 Conda 环境名称: " env_name

# 创建并激活 Conda 环境
conda create -n $env_name python=3.9 -y
source activate $env_name

# 安装 transformers 库
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple transformers==4.39.2

# 安装 cudatoolkit
conda install cudatoolkit==11.8 -y

# 安装 PyTorch 及其相关库
pip3 install numpy --pre torch torchvision torchaudio --force-reinstall --index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 安装 auto-gptq
pip install auto-gptq --no-build-isolation

# 安装其他常用库
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple ipykernel evaluate tqdm scikit-learn ipywidgets

echo "All installations are complete."