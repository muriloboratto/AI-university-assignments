#!/bin/bash

# File:           install_dependencies.sh
# Last changed:   19/09/2023 21:03
# Purpose:        Install system dependencies for AI-university-assignments notebooks           
# Usage: 
#    HowToExecute:   sh install_dependencies.sh           

set -e

echo "Starting the installation process..."

# Update the system
echo "Updating the system..."
sudo apt update

# Install Python3 and pip
echo "Installing Python3 and pip..."
sudo apt install python3 python3-pip -y

# Install Cuda Toolkit for GPU processing
echo "Installing Cuda Toolkit..."
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.2.2/local_installers/cuda-repo-ubuntu2204-12-2-local_12.2.2-535.104.05-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2204-12-2-local_12.2.2-535.104.05-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2204-12-2-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda

# Install specific versions of Python libraries
echo "Installing Python libraries..."
packages=(
    "nvidia-cudnn-cu11==8.6.0.163"
    "scikit-learn==1.2.2"
    "torch==2.0.1"
    "numpy==1.23.5"
    "pandas==2.0.2"
    "matplotlib==3.7.1"
    "pydot==1.4.2"
    "graphviz==0.20.1"
    "keras==2.12.0"
    "torchvision==0.15.2"
    "tensorflow==2.12.0"
    "torchaudio==2.0.2"
)

for package in "${packages[@]}"; do
    pip3 install "$package"
done

# Install Jupyter Notebook
echo "Installing Jupyter Notebook..."
pip3 install jupyter

# Remove .deb file
rm cuda-repo-ubuntu2204-12-2-local_12.2.2-535.104.05-1_amd64.deb

echo "Installation process completed! Make sure to reboot your system load NVIDIA drivers."
