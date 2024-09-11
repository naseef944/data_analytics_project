# Image Classification Project

This repository contains an image classification project that involves building and evaluating a model to classify images of cats and dogs. The project includes datasets, Jupyter notebooks for various stages of the workflow, and results from the model's training and evaluation.

## Project Structure

### 1. `data/`
Contains the dataset used for training and evaluating the image classification model. The dataset is organized into subfolders for different classes:
- `cats/`: Images of cats.
- `dogs/`: Images of dogs.

### 2. `notebooks/`
Includes Jupyter notebooks that cover different stages of the project:
- **`01_data_preprocessing.ipynb`**: Contains code for loading, cleaning, and preprocessing the image data.
- **`02_model_training.ipynb`**: Includes the code for building, training, and evaluating the image classification model.
- **`03_results_evaluation.ipynb`**: Provides code for generating and analyzing results, including plots and metrics.

### 3. `results/`
Holds the output from the model training and evaluation:
- **`model_checkpoints/`**: Contains saved model weights at various epochs. Checkpoints are in `.h5` format and named based on the epoch and validation loss.
- **`plots/`**: Includes various plots that illustrate the model's performance. The plots include:
  - `loss_plot.png`: Training and validation loss over epochs.
  - `accuracy_plot.png`: Training and validation accuracy over epochs.
  - `confusion_matrix.png`: Confusion matrix showing true positives, false positives, true negatives, and false negatives.
  - `roc_curve.png`: ROC curve plotting true positive rate against false positive rate.
  - `precision_recall_curve.png`: Precision-recall curve showing the trade-off between precision and recall.
  - `example_predictions.png`: Example images with true and predicted labels.


