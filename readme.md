# BirdCLEF 2025 — Clean Notebook Pipeline

This repository provides a clear, reproducible baseline for the BirdCLEF 2025 challenge using log‑mel spectrogram features and a Random Forest classifier. It is organized for portfolio readability and practical reuse.

## Overview

- Goal: detect bird species from audio soundscapes (BirdCLEF 2025).
- Approach: extract log‑mel spectrogram features, train a classical model (Random Forest) as a strong baseline, and provide an end‑to‑end pipeline from exploration to inference.
- Status: baseline complete and reproducible; room for improvements listed in Roadmap.

## Project Structure

- `notebooks/`: ordered notebooks forming the pipeline (from EDA to inference)
- `data/`: raw and intermediate data (ignored in Git)
- `processed/`: processed features and artifacts (ignored)
- `images/`: optional figures exported from notebooks (ignored)
- `requirements.txt`: Python dependencies
- `Makefile`: convenience targets for env setup and notebook utilities

## Notebooks Overview

0. `eda.ipynb` — Quick exploratory data analysis.
1. `01-metadata-exploration.ipynb` — Explore dataset metadata and taxonomy.
2. `02-loadlisten-sample.ipynb` — Load sample audio with `librosa` and listen to clips.
3. `03-fourierTransformation-melSpectogram.ipynb` — Fourier transforms and mel spectrograms.
4. `04-denoise.ipynb` — (Optional) Denoising experiments with `noisereduce`.
5. `05-humanVoice-trim.ipynb` — Remove speech and chunk audio (5s).
6. `06-feature-extraction.ipynb` — Compute log‑mel spectrogram features.
7. `07-featureEngineering-modelTraining.ipynb` — Train `RandomForestClassifier` on features.
8. `08-testing-pipeline.ipynb` — End‑to‑end test on training soundscapes.
9. `09-inference.ipynb` — Generate predictions/submission with saved model & encoder.

## Setup

- Python: 3.10+ recommended.
- Create and activate a virtualenv, then install requirements:
  - `python -m venv .venv && source .venv/bin/activate`
  - `pip install -r requirements.txt`

## Data

- Download the BirdCLEF 2025 dataset from Kaggle.
- Place raw audio/metadata under `data/` (kept out of Git).
- Large artifacts (trained models, encoders, processed features) are also ignored by default.

## Usage

1. Run notebooks in order from `notebooks/` to reproduce the baseline.
2. After training, `notebooks/09-inference.ipynb` creates a submission using saved model and label encoder (configure paths at the top of the notebook).
3. Optional: strip notebook outputs before committing to keep diffs small:
   - `pip install nbstripout && nbstripout --install && nbstripout notebooks/*.ipynb`

## Results (Baseline)

- Model: Random Forest on log‑mel spectrogram features.
- Observed: achieves a reasonable baseline on validation; exact metrics depend on split and preprocessing (see `07-...` and `08-...` notebooks for details).
- Artifacts: model and label encoder saved locally (ignored from Git).

## Roadmap / Next Steps

- Upgrade model family (e.g., CNNs on spectrograms or audio transformers).
- Add cross‑validation and hyperparameter tuning (Optuna/RandomizedSearchCV).
- Improve data augmentation and noise handling.
- Refactor shared logic from notebooks into small utility modules for reuse.
- Optional automation with Papermill to run the pipeline end‑to‑end.

## Notes

- Developed with `scikit-learn==1.2.2` and `numpy==1.23.5`; see `requirements.txt` for more.
- `.gitignore` excludes datasets, large artifacts, and transient files.
- No external secrets or tokens are stored in this repo.
