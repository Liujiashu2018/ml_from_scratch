# ml_from_scratch
This project consists of 5 DIY machine learning algorithms: Classification tree, Random Forest, AdaBoost regression tree, Gradient Boost regression tree, and K-Nearest Neighbors. We have rewritten a function for each method to achieve similar outputs as their standard implementations. Additionally, for each method, we have developed a cross-validation function to tune one hyperparameter. The project includes each method, along with two functions, in an R package. Moreover, we compare the accuracy of our functions to that of the original R package, using the penguins dataset in R.

-Classification Tree-
Thoughts on building a simple classification tree:
1. Define Gini Impurity Function: We started by defining a function to calculate Gini impurity. This function is crucial for assessing the purity of the splits.
2. Identify the Best Split: Then we iterated over all predictors and their possible split points. The goal is to select the predictor and split point that result in the lowest weighted average Gini impurity. In other words, we need to get the best split first. 

3. Split the Data Based on Best Result: Once the best split is identified, we divided the dataset into two parts: left and right. 

4. Apply Recursive Splitting to Each Resulting Subset: This process continues until the stopping criteria are met, effectively growing the tree.

5. Test the Algorithm with Penguins Dataset: Train the algorithm with the training data and then test its performance on a separate set of test data.

Note: Currently, our model exclusively utilizes the Gini index for calculating impurity in classification problems. Future enhancements may include incorporating entropy as an alternative measure for classification problems and variance calculations for regression models. 

Current Challenge: Unfortunately, our initial implementation of the classification tree is exhibiting an unexpected outcome, with a prediction accuracy of 0%. This result is atypical and suggests potential issues in the model's design or implementation. Our team is actively investigating to identify and rectify the underlying cause of this anomaly.

-Random Forest-
For this method, the description is as follows: First, we use with-replacement sampling of the training dataset to build multiple trees (which operate in parallel).Then, we make predictions based on each tree and determine the final prediction using majority vote (this may involve mapping to transform into the data's labels). Finally, we compare the predictions with the test dataset and calculate the accuracy.
It turns out the ensemble function we write have relative good prediction accuracy of 0.96 compare to the result of randomforest function of  0.97, when predicting the penguins species.

-Adaboost Regression Tree-
Three basic ideas behind Adaboost:
1. Adaboost combines a lots of "weak learners" to make classifications. The weak learners are almost always stumps. 
2. Some stumps get more say in the classficiation than others. 
3. Each stump is made by taking the previous stump's mistakes into account. 

For this method, the description is as follows: It includes a custom AdaBoost regression tree function (adaboost_rt), which is designed to train an AdaBoost regression tree model. Then, we compare the performance of the AdaBoost model with a standard GBM model using the penguins dataset. Finally, we write a cross-validation function (adaboost_cv) for hyperparameter tuning.

-knn-
For this method, the description is as follows: There are two functions, one for KNN and another for KNN with cross-validation.We use KNN to calculate its accuracy based on the penguins dataset, and we use KNN with cross-validation to tune the hyperparameter k. Finally, we compare this accuracy with that of the original KNN function in the 'class' package, also based on the penguins dataset.

-gradient boost regression trees-
For this method, the description is as follows: It includes a custom Gradient Boost Regression Tree function (gbrt), which is designed to train a Gradient Boost Regression Tree model and then make predictions. We then compare the performance of our Gradient Boost Regression model with a standard GBM model using the penguins dataset. Finally, we have developed a cross-validation function (gbrt_cv) for the hyperparameter tuning of the learning rate.
