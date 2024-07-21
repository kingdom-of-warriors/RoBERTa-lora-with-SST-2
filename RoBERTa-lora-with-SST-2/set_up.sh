#!/bin/bash

# Create conda environment
conda create -n AI python=3.9 -y
conda activate AI

# Install CUDA toolkit
conda install cudatoolkit==11.8 -y

# Install Python packages
pip install -r requirements.txt