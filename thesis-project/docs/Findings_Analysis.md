# Findings and Analysis

## Model Performance:
- **Training Accuracy**: 97%
- **Testing Accuracy**: 96%
- The model performed consistently well, with minimal overfitting, as indicated by the similar training and testing accuracies.

## Feature Importance:
Key features influencing predictions included symptoms like joint pain, fever, and cough. These symptoms had the highest importance scores in the Random Forest model.

## Confusion Matrix:
The confusion matrix revealed that the model had a high true positive rate but struggled slightly with certain disease categories, which may require further tuning.

## Comparative Analysis:
Random Forest outperformed both KNN and Decision Tree models in terms of accuracy and generalization. The ensemble nature of Random Forest provided better performance on complex data.

## Visualizations:
- **Precision-Recall Curve**: Demonstrated how well the model predicted different diseases.
- **ROC Curve**: Showed the model's ability to distinguish between disease categories.

