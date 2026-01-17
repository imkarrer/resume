#!/bin/bash
# Script to install xelatex and build the resume

set -e

echo "Updating package lists..."
sudo apt-get update

echo "Installing xelatex and required packages..."
sudo apt-get install -y texlive-xetex texlive-fonts-recommended texlive-latex-extra

echo "Building resume with xelatex..."
cd /home/imkarrer/resume
xelatex resume.tex

echo "Resume built successfully! Check resume.pdf"
