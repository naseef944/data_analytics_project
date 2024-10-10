import pandas as pd
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
from sklearn.model_selection import train_test_split
train = pd.read_csv(r"C:\Users\nasee\Downloads\Training_2.csv")
test = pd.read_csv(r"C:\Users\nasee\Downloads\Testing.csv")
train=train.drop(['Unnamed: 133'], axis=1)
X_train = train.drop(["prognosis"], axis=1)
y_train = train["prognosis"]
rf = RandomForestClassifier(random_state=42)
xtrain,xtest,ytrain,ytest = train_test_split(X_train,y_train,test_size=0.2,random_state=42)
model_rf = rf.fit(xtrain, ytrain)
y_pred_rf = model_rf.predict(xtest)
print("accuracy of the model is:", accuracy_score(ytest, y_pred_rf))
accuracy of the model is: 1.0
# Example for Random Forest
feature_importances = model_rf.feature_importances_
feature_importance_df = pd.DataFrame({
'Feature': X_train.columns,
'Importance': feature_importances
})
# Sort the DataFrame by importance in descending order
feature_importance_df = feature_importance_df.sort_values(by='Importance', ascending=False)
# Select the top 45 features
top_features = feature_importance_df.head(45)
selected_feature_names = top_features['Feature'].tolist()
# Filter the original training dataset to include only the top 45 features
X_selected = X_train[selected_feature_names]
# Now 'X_selected' contains only the top 45 features, we can use it for training
# For example, you can split the data into training and testing sets
x_train,x_test,y_train,y_test = train_test_split(X_selected,y_train,test_size=0.2,random_state=42)
74
model = RandomForestClassifier(random_state=42)
model.fit(x_train, y_train)
tr_pred_rf_ = model.predict(x_test)
print("The accuracy of the model after considering top 45 symptoms:", accuracy_score(y_test, tr_pred_rf_))
