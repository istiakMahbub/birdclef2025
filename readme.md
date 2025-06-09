# BirdCLEF 2025 Notebook Pipeline

This repository is a collection of Jupyter notebooks that walk through a baseline approach for the [BirdCLEF 2025](https://www.kaggle.com/competitions/birdclef-2025) competition. The notebooks were originally developed on Kaggle and use a Random Forest classifier trained on log-mel spectrogram features.

[![Open In NBViewer](https://img.shields.io/badge/Metadata%20Notebook-NBViewer-orange?logo=jupyter)](https://nbviewer.org/github/istiakMahbub/birdclef2025/blob/main/01-metadata-exploration.ipynb)

## Notebook Overview

1. **01-metadata-exploration.ipynb** – Explore dataset metadata and taxonomy.
2. **02-loadlisten-sample.ipynb** – Load sample audio with `librosa` and listen to clips.
3. **03-fourierTransformation-melSpectogram.ipynb** – Introduce Fourier transforms and mel spectrograms.
4. **04-denoise.ipynb** – (Optional) Experiment with audio denoising using `noisereduce`.
5. **05-humanVoice-trim.ipynb** – Remove human speech and chunk audio into 5-second segments.
6. **06-feature-extraction.ipynb** – Compute log-mel spectrogram features from each chunk.
7. **07-featureEngineering-modelTraining.ipynb** – Train a `RandomForestClassifier` with the engineered features.
8. **08-testing-pipeline.ipynb** – Run an end-to-end test on the training soundscapes.
9. **09-inference.ipynb** – Perform final inference on the competition test set.

## Key Points

- The repository is notebook-centric; there are no standalone Python modules.
- Environment versions used during development: **scikit-learn** `1.2.2` and **numpy** `1.23.5`.
- The final inference notebook expects paths to the trained model and label encoder packaged as Kaggle datasets.

## Next Steps

1. Run the notebooks sequentially to reproduce the baseline pipeline.
2. Experiment with other models such as convolutional networks or transformers on the spectrograms.
3. Consider converting repeated notebook code into Python scripts for automation.
4. Explore techniques like cross-validation and hyperparameter tuning to improve accuracy.

## Usage

1. Download the BirdCLEF 2025 dataset from Kaggle.
2. Execute each notebook in order. After training, `09-inference.ipynb` will generate a submission file using the saved model and label encoder.
