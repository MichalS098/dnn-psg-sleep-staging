#!/bin/bash

# Data directories
mkdir -p data/raw
mkdir -p data/processed
mkdir -p data/interim

# Notebooks directory
mkdir notebooks

# Source code directories
mkdir -p src/data
mkdir -p src/features
mkdir -p src/models
mkdir -p src/visualization

# Tests directory
mkdir tests

# Models directory
mkdir models

# Reports directories
mkdir -p reports/figures

# Create placeholder python files in each src sub-directory
touch src/data/data_preparation.py
touch src/features/feature_engineering.py
touch src/models/train_model.py
touch src/models/predict_model.py
touch src/visualization/visualize.py

# Create environment and requirement files
touch environment.yaml
touch requirements.txt

# Create README and .gitignore
touch README.md
touch .gitignore
