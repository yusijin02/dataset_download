# 🐱 Datasets Downloading 🐱

This project aims to provide scripts for downloading various datasets.

**Welcome contributions !**

## 🌟 Quick Start

✅ <a href="#huggingface">Download from Hugging Face</a> (models or dataset)

✅ <a href="#Kinetics400">Download Kinetics 400 Dataset</a> (~424GB)



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

  



















