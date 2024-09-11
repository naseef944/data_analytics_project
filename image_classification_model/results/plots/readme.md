## Results Plots

This repository contains various plots that illustrate the performance of the image classification model during training and evaluation. These plots provide insights into the model's learning process and its performance on the dataset.

### Plots

- **loss_plot.png**: Shows the training and validation loss over epochs. The orange line represents the training loss, and the green line represents the validation loss. This plot helps in assessing how well the model is learning and whether it is overfitting or underfitting.

- **accuracy_plot.png**: Displays the accuracy of the model on training and validation datasets across different epochs. The blue line shows the training accuracy, while the red line shows the validation accuracy. This plot is useful for evaluating the model's generalization ability.

- **confusion_matrix.png**: Provides a detailed view of the classification results, showing counts of true positives, false positives, true negatives, and false negatives. This helps in understanding how the model performs across different classes.

- **roc_curve.png**: The ROC curve plots the true positive rate against the false positive rate at various threshold settings. It is used to evaluate the model's performance and understand the trade-offs between sensitivity and specificity.

- **precision_recall_curve.png**: Illustrates the trade-off between precision and recall for different threshold values. This plot is particularly useful in cases where class distribution is imbalanced.

- **example_predictions.png**: Shows a selection of images from the test set with their true labels and predicted labels. This visualization helps in assessing the model’s performance on individual images.

### How to View the Plots

To view these plots, simply open the respective `.png` files in the `results/plots` folder. Each plot provides a visual representation of different aspects of the model's performance.
