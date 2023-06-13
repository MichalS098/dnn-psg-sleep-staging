# Deep Neural Network for sleep staging based on PSG data

"Polysomnographic sleep recordings (PSGs) capture key biomedical signals of a patient in the context of sleep medicine studies, and are a central tool for the diagnosis of many sleep disorders. Current guidelines for sleep scoring carry out segmentation of neurophysiological activity in discrete 30s epochs. Each epoch may be classified as one of five possible states according to signal activity: wakefulness, stages N1, N2, N3, and R. For sleep staging, neurophysiological activity of interest involves monitoring of different traces of electroencephalographic (EEG), electromyographic (EMG) and electrooculographic (EOG) activity [1]."



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


## Data Description
Night recordings are identified by a sequence number SNXXX (e.g. SN001 identifies recording 001). Three different files are available for each recording using the following notation:

* SNXXX.edf: Contains the PSG signals (e.g. EEG, EMG, EOG and ECG derivations as described above) in EDF format [3]
* SNXXX_sleepscoring.edf: Contains the corresponding hypnogram annotations and lights-off/on markers* in EDF+ format [4]
* SNXXX_sleepscoring.txt: Contains the corresponding hypnogram annotations and lights-off/on markers* in comma separated text file format.

*Hypnogram sleep stages and lights off-on text markers are coded following the EDF+ standard texts and polarity rules [5].

Recording periods made available in the files were clipped to contain valid scoring intervals only, i.e. time between 'lights off' and 'lights on' markers. Aggregated data regarding age, gender, and general PSG descriptors are available in Subjects_info_aggregated.txt as plain text.

## Citation
* Alvarez-Estevez, D., & Rijsman, R. (2022). Haaglanden Medisch Centrum sleep staging database (version 1.1). PhysioNet. https://doi.org/10.13026/t79q-fr32.
* Alvarez-Estevez D, Rijsman RM (2021) Inter-database validation of a deep learning approach for automatic sleep scoring. PLoS ONE 16(8): e0256111. https://doi.org/10.1371/journal.pone.0256111
* Goldberger, A., Amaral, L., Glass, L., Hausdorff, J., Ivanov, P. C., Mark, R., ... & Stanley, H. E. (2000). PhysioBank, PhysioToolkit, and PhysioNet: Components of a new research resource for complex physiologic signals. Circulation [Online]. 101 (23), pp. e215–e220.