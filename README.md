# Product Image Quality Scoring

An end-to-end machine learning pipeline that scores product image quality using a deep learning model. Built with PyTorch, Prefect, MLflow, and Docker.

## Project Organization

```
├── Makefile           <- Makefile with convenience commands like `make data` or `make train`
├── README.md          <- The top-level README for developers using this project.
├── data
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── docs               <- A default mkdocs project; see www.mkdocs.org for details
│
├── models             <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-jqp-initial-data-exploration`.
│
├── pyproject.toml     <- Project configuration file with package metadata for 
│                         product_image_quality_scoring and configuration for tools like black
│
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
│
├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures        <- Generated graphics and figures to be used in reporting
│
└── product_image_quality_scoring   <- Source code for use in this project.
    │
    ├── __init__.py             <- Makes product_image_quality_scoring a Python module
    │
    ├── config.py               <- Store useful variables and configuration
    │
    ├── dataset.py              <- Scripts to download or generate data
    │
    ├── features.py             <- Code to create features for modeling
    │
    ├── plots.py                <- Code to create visualizations
    │
    ├── modeling                
    │   ├── __init__.py 
    │   ├── model.py            <- PyTorch CNN/ViT model architecture         
    │   ├── loss.py             <- MSE/MAE loss definitions
    │   ├── metrics.py          <- evaluation metrics (MSE, SSIM, etc.) 
    │   ├── train.py            <- training loop
    │   └── predict.py          <- inference utilities
    │
    ├── api                
    │   ├── __init__.py 
    │   └── server.py           <- FastAPI inference API         
    │
    ├── pipelines                
    │   ├── __init__.py 
    │   ├── flows/        
    │   │   ├── training_flow.py   <- Prefect training pipeline
    │   │   └── inference_flow.py  <- Prefect batch inference
    │   └── deployment/            <- Prefect blocks/deployments
    │
    └── tracking/
        ├── __init__.py
        ├── mlflow_utils.py           <- MLflow experiment setup
        └── logger.py                 <- unified logging (loguru)
    
```
--------

