# 🐱 Datasets Downloading 🐱

This project aims to provide scripts for downloading various datasets.

**Welcome contributions !**

## 🌟 Quick Start

✅ <a href="#huggingface">Download from Hugging Face</a> (models or dataset) 🤗

✅ <a href="#Kinetics400">Download Kinetics 400 Dataset</a> (~424GB)

✅ <a href="#brain_decoding">Download Visual Brain Decoding Datasets</a> 🧠



## ⏬ Models/Datasets from 🤗 Hugging Face<a id="huggingface"> </a>

- script: `scripts/huggingface.sh` <a href="./scripts.huggingface.sh">Click Here</a>.

- **Set your configs**.

  ```bash
  ID_TO_DOWNLOAD=pscotti/naturalscenesdataset  # The ID to download
  PATH_TO_SAVE=naturalscenesdataset  # Choose a local path to save the data
  USE_MIRROR=true  # Use mirror website? (Faster for 🇨🇳 Chinese users)
  IS_DATASET=true  # Set it `true` if you are downloading a dataset, or `false` if model
  ```

- **Start Downloading**.

  ```bash
  bash scripts/huggingface.sh
  ```




## ⏬ Kinetics 400<a id="Kinetics400"> </a>

- script: `scripts/kinetics400.sh` <a href="./scripts/kinetics400.sh">Click Here</a>.

- **Start Downloading**.

  ```bash
  bash scripts/kinetics400.sh
  ```

  

## ⏬ Visual 🧠 Brian Decoding Datasets<a id="brain_decoding"> </a>

- **DIR (Deep Image Reconstruction, 2019)** (~97GB)

  3 subjects Image-fMRI datasets.

  script: `scripts/dir.sh` <a href="./scripts/dir.sh">Click Here</a>.

  ```bash
  bash scripts/dir.sh
  ```

- **GOD (Generic Object Decoding, 2017)** (~38GB)

  5 subjects Image-fMRI datasets.

  script: `scripts/god.sh` <a href="./scripts/god.sh">Click Here</a>.

  ```bash
  bash scripts/god.sh
  ```

- **BOLD 5000 v2.0 (Brain, Object, Landscape Dataset, 2019)** (~123GB)

  4 subjects Image-fMRI datasets.

  script: `scripts/bold5000.sh` <a href="./scripts/bold5000.sh">Click Here</a>.

  ```bash
  bash scripts/bold5000.sh
  ```

- **Berezutskaya *et al.* 2022 (iEEG-fMRI Dataset, 2022)** (~16GB)

  63 subjects Sounds-Video-fMRI-iEEG datasets.

  script: `scripts/berezutskaya2022.sh` <a href="./scripts/berezutskaya2022.sh">Click Here</a>.

  ```bash
  bash scripts/berezutskaya2022.sh
  ```

















