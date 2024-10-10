from sklearn.metrics import precision_score, recall_score, f1_score, classification_report
precision = precision_score(y_test, tr_pred_rf_, average='weighted')
print("Random forest Precision:", precision)
# Recall
recall = recall_score(y_test, tr_pred_rf_, average='weighted')
print("Random forest Recall:", recall)
# F1-score
f1_score = f1_score(y_test, tr_pred_rf_, average='weighted')
print("Random forest F1-Score:", f1_score)
#classification_report
print("Classification Report:")
print(classification_report(y_test, tr_pred_rf_))
