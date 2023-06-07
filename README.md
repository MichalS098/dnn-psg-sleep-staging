# Deep Neural Network for sleep staging based on PSG data

## Project structure

```
dnn-psg-sleep-staging/
│
├── data/
│   ├── raw/             # Raw, immutable data dump
│   ├── processed/       # Cleaned data, ready for analysis
│   └── interim/         # Intermediate data processing outputs
│
├── notebooks/           # Jupyter notebooks for exploration and testing
│
├── src/                 # Source code for the project
│   ├── data/            # Scripts to fetch or generate data
│   │   ├── __init__.py
│   │   └── data_preparation.py
│   │
│   ├── features/        # Scripts to turn raw data into features
│   │   ├── __init__.py
│   │   └── feature_engineering.py
│   │
│   ├── models/          # Scripts to train models and predict
│   │   ├── __init__.py
│   │   ├── train_model.py
│   │   └── predict_model.py
│   │
│   └── visualization/   # Scripts to create visualizations
│       ├── __init__.py
│       └── visualize.py
│
├── tests/               # Test cases for your project code
│
├── models/              # Trained and serialized models
│
├── reports/             # Generated analysis reports
│   └── figures/         # Generated graphics and figures
│
├── environment.yaml     # Conda environment file
├── requirements.txt     # The requirements file for reproducing the environment
├── README.md            # Project's readme file
└── .gitignore           # Specifies untracked files to ignore
```