#!/bin/bash

# Detailed TensorFlow GPU Installation on Linux

# 1. Install Miniconda
curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

# 2. Create a conda environment named tf
conda create --name tf python=3.9
conda activate tf

# 3. GPU Setup
# Check if the NVIDIA GPU driver is installed
nvidia-smi

# Install CUDA and cuDNN
conda install -c conda-forge cudatoolkit=11.8.0
pip install nvidia-cudnn-cu11==8.6.0.163

# Set up system paths
CUDNN_PATH=$(dirname $(python -c "import nvidia.cudnn;print(nvidia.cudnn.__file__)"))
export LD_LIBRARY_PATH=$CUDNN_PATH/lib:$CONDA_PREFIX/lib/:$LD_LIBRARY_PATH

# Automate system path setup
mkdir -p $CONDA_PREFIX/etc/conda/activate.d
echo 'CUDNN_PATH=$(dirname $(python -c "import nvidia.cudnn;print(nvidia.cudnn.__file__)"))' >> $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh
echo 'export LD_LIBRARY_PATH=$CUDNN_PATH/lib:$CONDA_PREFIX/lib/:$LD_LIBRARY_PATH' >> $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh

# 4. Install TensorFlow
pip install --upgrade pip
pip install tensorflow==2.13.*

# 5. Verify the installation
python3 -c "import tensorflow as tf; print(tf.reduce_sum(tf.random.normal([1000, 1000])))"
python3 -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"
