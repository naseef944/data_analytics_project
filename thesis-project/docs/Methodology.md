# Methodology

## Dataset:
The dataset used contains 132 symptoms and 43 diseases, sourced from Kaggle. It underwent preprocessing, including handling missing values, normalizing data, and feature scaling.

## Random Forest Classifier:
The Random Forest model was chosen for its ability to handle large datasets and manage high-dimensional data. It builds multiple decision trees and aggregates their predictions for more accurate results.

## Model Training:
The dataset was split into training and testing sets. The Random Forest algorithm was trained using the Scikit-learn library, and hyperparameters such as the number of trees and maximum depth were optimized using Grid Search.

## Evaluation Metrics:
- **Accuracy**: Percentage of correct predictions.
- **Precision and Recall**: Measures of prediction relevance and completeness.
- **F1-Score**: A balance between precision and recall.
- **Confusion Matrix**: Breakdown of true positives, false positives, true negatives, and false negatives.

## Comparative Analysis:
In addition to Random Forest, the K-Nearest Neighbors (KNN) and Decision Tree models were trained on the same dataset for comparison.

