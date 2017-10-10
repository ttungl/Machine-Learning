# Machine Learning (coursera - Andrew Ng)
 Octave version 3.8.0
 
 Why Octave/Matlab? It supports the vectorized implementation, while using others, e.g. python, you have to implement in the `loop` for a bunch of information that needs to be updated concurrently.

        Author: Tung Thanh Le
        Contact: ttungl at gmail dot com

* Week #2: Univariate / Multivariate Linear Regression.
* Week #3: Logistic Regression, and Regularized Logistic Regression.
    Note that, Regularized Logistic Regression is applied with various `lambdas` to find a good fit data and the good decision boundary. If `lambda` is too large, underfitting the data (`lambda`~100). Otherwise, if it is too small, overfitting the data (`lambda`~0).   
* Week #4: Neural Network with handwritten prediction. Use `feedforward propagation algorithm` to predict the labels of training sets. 
* Week #5: Neural Network Training with handwritten. Use `backpropagation algorithm` to predict the labels of training sets. Note that, the `backprop algorithm` is implemented after running the `feedforward propagation algorithm` to compute all the `activations` and `h_theta(x)`. 
* Week #6: Diagnosing Bias/Variance, Evaluating a Hypothesis, Learning Curves, Error Analysis. These techniques are used to diagnose the performance of the learning algorithm. Observing the learning curves allows us what to do next in order to fix the model. 
* Week #7: Support Vector Machines (SVM). `SVM` is used to perform the classifications by building the classifiers based on the training datasets. It tends to separate the boundaries between the training datasets by finding the optimal hyperplane and maximizing the margin as large as possible. Implemented the email spam filter.
* Week #8: `K-Means Clustering` and `Data Compression` using `PCA` (Principle Component Analysis). In unsupervised learning problems, `K-Means Clustering` is to cluster the similar data examples together. For data compression, `PCA` is used to reduce data from `n`-dimension to `k`-dimension (`k < n`). Note, PCA cannot be applied to preventing overfitting issue, instead, use regularization. Implemented k-Means clustering to cluster the image of 24-bit color, each pixel is represented as a data example, use k-Means to find 16 colors that best groups pixels in 3-D RGB space. Implemented PCA to reduce 3-D data to 2-D data. Two steps in PCA, first step is to compute the covariance matrix of the data. Second, use SVD function to compute the eigenvectors.
* Week #9: `Anomaly Detection System` and `Recommender System`. Implement the `anomaly detection algorithm` and apply it to detect failing servers on a network. This basically detects the anomalies of the examples in the network (throughput, latency, etc.) using `Multivariate Gaussian Distribution`. Implement the `Recommender system` using the `collaborative filtering learning algorithm`. The objective is to predict the ratings for items that users have not yet rated.  
* Week #10: Learning with Large dataset; Mini-batch gradient descent; stochastic gradient descent convergence; Online learning; Map-reduce and data parallelism; 
* Week #11: Photo OCR (optical character recognition) problem; Sliding windows (image scanning); Artificial data analysis for photo OCR (combination of the source and the backgrounds); Ceiling analysis (what part of pipeline should spend the most time); 

### Note
In some topics, Dr. Andrew Ng does not go into detail, I highly recommend you to read the book titled: [The Elements of Statistical Learning -- 10th Edition](https://web.stanford.edu/~hastie/ElemStatLearn/), to understand more about those topics. 

### Claims
I completed the course on April 16, 2017. 

License number: 7MMK9BZBASXN

Certificate URL: https://www.coursera.org/account/accomplishments/records/7EXQHX72WRS2
