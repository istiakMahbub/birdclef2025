# BirdCLEF 2025 Notebook Collection

This repository contains a series of Jupyter notebooks that form a simple pipeline for the [BirdCLEF 2025](https://www.kaggle.com/competitions/birdclef-2025) competition. The goal is to build a baseline system for classifying bird calls using a random forest model.

[![Open In NBViewer](https://img.shields.io/badge/Metadata%20Notebook-NBViewer-orange?logo=jupyter)](https://nbviewer.org/github/istiakMahbub/birdclef2025/blob/main/01-metadata-exploration.ipynb)

## Notebook Overview

1. **01-metadata-exploration.ipynb** – Explore taxonomy metadata.
2. **02-loadlisten-sample.ipynb** – Load sample audio clips and listen to examples.
3. **03-fourierTransformation-melSpectogram.ipynb** – Generate Fourier transforms and mel spectrograms.
4. **04-denoise.ipynb** – (Optional) Denoise audio with the `noisereduce` library.
5. **05-humanVoice-trim.ipynb** – Remove spoken words using `webrtcvad` and chunk the audio.
6. **06-feature-extraction.ipynb** – Compute log-mel spectrogram features for each chunk.
7. **07-featureEngineering-modelTraining.ipynb** – Perform feature engineering and train a `RandomForestClassifier`.
8. **08-testing-pipeline.ipynb** – Test the inference pipeline on the `train_soundscapes` data.
9. **09-inference.ipynb** – Run inference on the competition test set to produce the submission file.

## Environment

The notebooks were created on Kaggle using versions compatible with its default runtime:

- **scikit-learn** `1.2.2`
- **numpy** `1.23.5`

Using these versions ensures the saved model (`random_forest_model.pkl`) can be loaded without issues during inference.

## Usage

1. Obtain the BirdCLEF 2025 dataset from Kaggle.
2. Open the notebooks in order and execute each step. The final inference notebook expects paths to the trained model and label encoder provided as Kaggle datasets.

