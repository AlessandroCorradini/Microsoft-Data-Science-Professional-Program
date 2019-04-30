# Final Challenge Quiz

## Introduction

In this final challenge, you will put into practice some of the key principles and techniques you have learned in the course.

The challenge is based on a dataset containing information about flights, including details of whether flights were on-time, early, or late. Your goal is to create a machine learning model to predict how many minutes late or early a flight will be.

The challenge does not include specific step-by-step instructions, so you must interpret the requirements and perform the necessary tasks to build, test, and optimize your model. After you have created your model, you are required to enter the predicted labels for a test dataset that is provided in the lab files for this course so that your model's performance can be graded. You will receive a point for each predicted label that is correct to within 10 minutes. The challenge accounts for 40% of your overall grade.

## Challenge

Your challenge is to create a machine learning web service that predicts flight delays that are accurate to within 10 minutes when tested with the test data set that is provided with this course.

Start by creating a new Azure Machine Learning experiment, and giving it a suitable name (such as "Flight Predictions"). Then add the **Flights Delay Data** sample dataset to the experiment, and visualize its contents. This dataset consists of the following fields:

*   **Year**: The year in which the flight took place.
*   **Month**: The month in which the flight took place.
*   **DayofMonth**: The day of the month on which the flight took place.
*   **DayOfWeek**: The week day on which the flight took place.
*   **Carrier**: The airline operating the flight.
*   **OriginAirportID**: A numeric code indicating the departure airport.
*   **DestAirportID**: A numeric code indicating the destination airport.
*   **CRSDepTime**: The scheduled departure time in 24-hour format.
*   **DepDelay**: The number of minutes late or early that the flight departed.
*   **DepDel15**: A Boolean column indicating whether or not the flight departed 15 minutes or more late.
*   **CRSArrTime**: The scheduled arrival time.
*   **ArrDelay**: The number of minutes late or early that the flight arrived.
*   **ArrDel15**: Whether or not the flight arrived 15 or minutes more late.
*   **Cancelled**: Whether or not the flight was cancelled.

You must use the techniques you have learned in this course to explore the dataset, and perform the necessary feature selection and engineering, model evaluation, and tuning to create a machine learning model that predicts the **ArrDelay** column.

After you have created a model, you must publish it as a web service and test it using the **Test-Flights.csv** test dataset provided. This dataset contains 25 observations in which the **ArrDelay, ArrDel15,** and **Cancelled** columns have been set to 0. You will score a point for each observation for which your model successfully predicts the **ArrDelay** label to within 10 minutes of the actual delay time.

### Test Your Model

When you are satisfied with your model, use it to create a predictive experiment that returns only the Scored Labels columns and then publish it as a web service.

After your web service has been published, test it from Excel using the test data in the Test-Flights.csv file provided in the lab files for this course (don't include the Row ID column in the input for the web service - it's only included to make it easier to identify which observation each prediction relates to).

Enter the values predicted by your model for each row:

Row 1: **1.015017033**
  
Row 2: **-9.571081161**
  
Row 3: **-3.859267235**
  
Row 4: -18.83285141

Row 5: **4.564369678**
  
Row 6: **16.04795837**
  
Row 7: **-6.413471699**
  
Row 8: 258.6484985

Row 9: **-2.42021203**
  
Row 10: **-8.53871441**
  
Row 11: **-5.337242126**
  
Row 12: **8.550778389**
  
Row 13: **-9.911875725**
  
Row 14: **-8.722691536**
  
Row 15: **-6.948420048**
  
Row 16: **-3.565994978**
  
Row 17: **-4.274777412**
  
Row 18: **-11.62866116**
  
Row 19: **-4.15994072**
  
Row 20: **-4.927985668**
  
Row 21: **-2.033878803**
  
Row 22: **-5.426571995**

Row 23: **-10.88039684**
  
Row 24: **8.316792488**
  
Row 25: **15.757753849**