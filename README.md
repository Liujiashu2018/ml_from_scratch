# ml_from_scratch
This project consists of 5 DIY machine learning methods:Classification tree, random forest, adaboost regression tree, gradient boost regression tree and K nearest neighbours, which we rewrite a function repsectively intend to acheive similar output as they could. Also for each method we write a cross validatation function to tune one hyperparameter, finally we include each method with 2 functions in a R package.What's more, we compare the function accuracy compared to the original r package based on a dataset in R called penguins.

-random forest-
For this method,Description: First we use with-replacement sampling of train dataset to build multiple tress(which are parallel), then we make predictions based on each tree and decide the final prediction using the majority vote(may use mapping to transform to labels of data). Finally we compare the prediction with the test dataset and calculate the accuracy.
It turns out the ensemble function we write have relative good prediction accuracy of 0.96 compare to the result of randomforest function of  0.97, when predicting the penguins species.

