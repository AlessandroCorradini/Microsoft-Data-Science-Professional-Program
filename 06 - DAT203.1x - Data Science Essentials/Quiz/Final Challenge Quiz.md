# Final Challenge Quiz

## Introduction

In this final challenge, you will put into practice some of the key principles and techniques you have learned in the course.

The challenge is based on a dataset containing information about flights, including details of whether flights were on-time, early, or late. Your goal is to explore the data to identify features that might be predictive of how many minutes late or early a flight will be.

The challenge does not include specific step-by-step instructions, so you must interpret the requirements and perform the necessary tasks to achieve them. As you complete the challenge, you are required to answer some questions to verify that you have completed each task correctly – so read the requirements very carefully and be sure to fulfill them exactly. The challenge is graded, and accounts for 40% of your overall grade.

## Part 1: Data Cleansing

In this challenge, you will work with some built-in sample datasets in Azure Machine Learning. The datasets contain details of flights, including an indication of how many minutes late or early the flight arrived at its destination.

In this first part of the challenge, you will use Azure Machine Learning to clean the data and prepare it for exploration.

### Ingest Flight Data

Start by signing in to your Azure Machine Learning Workspace and creating a new experiment. It doesn't matter what you name the experiment, just use an appropriate name like "Flights Challenge". After you've created the experiment, add the Flights Delay Data sample dataset to the experiment, and then visualize its contents.

How many rows are in the dataset?

**2719418**

What is the mean value of the ArrDelay column?

**6.6377**

### Join the Airport Codes Dataset

Note that the Flight Delays Data dataset includes the following columns:

- OriginAirportID
- DestAirportID

These are numeric identifiers for the origin airport and destination airport for each flight.

To see the details of the airports, add the Airport Codes Dataset sample dataset to the experiment, and join it to the Flight Delays Data dataset. You will need to create two joins; one to join the origin airport and one to join the destination airport. You can use built-in Azure Machine Learning Join Data modules to accomplish this, or you could use custom SQL, R, or Python code. The resulting joined dataset should contain the original flight data as well as the name, city, and state for both the origin and destination airports.

After you have joined the datasets, visualize the joined data.

Which is the most frequently occurring destination airport in the dataset.

- Miami International
- **Hartsfield-Jackson Atlanta International**
- Los Angeles International
- San Francisco International

### Remove Duplicates and Replace Missing Values

Before you can explore the data, you must cleane it by removing duplicate rows and replacing missing values.

Remove Duplicates
First, remove duplicate rows (retaining the first instance of each row). Rows are considered duplicates in this dataset if they have matching values for all the following fields:

- Year
- Month
- DayofMonth
- Carrier
- OriginAirportID
- DestAirportID
- CRSDepTime
- CRSArrTime

You can use the built-in Azure Machine Learning Remove Duplicate Rows module, or you can write a custom SQL, R, or Python script.

### Clean Missing Values

After removing the duplicate rows, you must replace missing values in the DepDelay and ArrDelay columns. Any missing values in these columns should be replaced with the value 0 (zero). You can use the built-in Azure Machine Learning Clean Missing Data module to accomplish this, or you can write a custom SQL, R, or Python script.

After you have removed duplicate rows and replaced missing values, how many rows remain in the dataset?

**2719397**

After you have removed duplicate rows and replaced missing values, what is the mean value of the ArrDelay column?

**6.5669**

## Part 2: Data Exploration

Now that you have cleaned up the flight data, you can use R or Python to visualize statistics and relationships that will help you plan for data modeling.

To begin, open the Azure Machine Learning experiment you used to cleanse the flight data, add a Convert to CSV module to the last existing module, and run the experiment. Then right-click the output of the Convert to CSV module and open the dataset in a new notebook using your choice of R or Python 3.

After the notebook has opened, run the existing cells (which are generated automatically) to load and view the DataFrame.

Tip: Rename your notebook to something more meaningful (like "Explore Flight Data"). This will help you find it again if you want to reopen it later.

### View Summary Statistics

Use the R summary and sd functions or the Python describe function to display summary statistics for all columns in the DataFrame containing your flights data.

Enter the following summary values for the ArrDelay column:

Minimum: **-9.400000e+01**

Mean: **6.566923e+00**

Standard Deviation: **3.844812e+01**

Maximum: **1.845000e+03**

### View ArrDelay Distribution

Your eventual goal is to build a model that predicts the ArrDelay value. A useful starting point is to understand the range and distribution of values for this value.

To further explore the range and distribution of values in the ArrDelay column, you must now create a plot that shows a box plot and a histogram of this value. The histogram should display the values in 30 bins.

Based on the data visualization, which three of the following statements accurately reflect the distribution of ArrDelay values?

- **The median, first quartile, and third quartile are all fairly close to 0, indicating that most flights arrive close to their scheduled time.**
- The distribution is evenly spread across the range of values, indicating that flights are equally likely to be early, on-time, or late.
- The median indicates that the majority of flights are 500 minutes late or more.
- **The range of arrival times ranges extensively, with some flights arriving as much as 1500 minutes late.**
- **The distribution is right-skewed, so there is a higher range of values for late flights than for early flights.**
- The distribution is left-skewed, so there is a higher range of values for early flights than for late flights

NOTE: You must select all three correct answers!

### Use Histograms to Compare Numeric Columns

The flights dataset includes a number of numeric features (for example DepDelay, which indicates the number of minutes late a flight departed) or psuedo-numeric features (for example CRSDepTime, which indicates the scheduled departure time as a whole number in 24 hour clock format). To explore how these values might be related to arrival delay, you will plot histograms conditioned by the ArrDel15 column, which is a binary column indicating whether a flight arrived 15 or more minutes late.

Write code to generate conditioned histograms for the following columns, conditioned by the ArrDel15 column:

- DepDelay
- CRSArrTime
- CRSDepTime
- DayofMonth
- DayOfWeek
- Month

Based on the conditioned histograms, which three of the following statements are true?

- There are significantly more flights that are less than 15 minutes late than there are flights that are 15 minutes late or more.
- Late flights tend to occur more frequently at the beginning of the month.
- Flights that are 15 minutes or more late tend to have a higher DepDelay value than flights that are on-time.
- Late flights tend to occur more frequently for flights with a CRSArrTime that is later in the day, the highest volume of delayed flights scheduled to arrive between 3pm (1500 hours) and 8pm (2000 hours)
- The relative distribution of late flights varies significantly from that of on-time flights based on the day of the week.

NOTE: You must select all three correct answers.

### Use Scatter Plots to Compare Numeric Columns

TScatter plots are another useful way to compare two numeric values, and can be conditioned on one or more variables using colors and shapes.

Write code to generate conditioned scatter plots for the following columns, conditioned by the ArrDel15 column using different colors for values of 0 and 1:

- DepDelay
- CRSArrTime
- CRSDepTime
- DayofMonth
- DayOfWeek
- Month

Based on the conditioned scatter plots, which two of the following statements are true?

- There is a clear relationship between ArrDelay and month. Later months of the year show markedly longer delays.
- There is a near-linear relatonship between DepDelay and ArrDelay for late flights. As departure delay increases, so does arrival delay.
- There is a clear correlation between ArrDelay and DayofMonth. Earlier days of the month show markedly longer delays.
- There is an apparent relationship between ArrDelay and CRSDepTime. Flights that depart early in the morning are typically less delayed than flights that are scheduled to depart after around 5am (0500 hours), at which time delays tend to get significantly longer. Delays then gradually get shorter as the day progresses.

NOTE: You must select both correct answers.

## Part 3: Machine Learning

Now that you've cleaned and explored the data, you can create an initial machine learning model, and try to predict how late (or early) a flight will be based on the features you have explored.

### Train a Regression Model
To predict a numeric value, such as the number of minutes delayed or early a flight arrives, you must train a regression model. Use the following steps to accomplish this:

1. Return to the Azure Machine Learning experiment you created in Part 1.
2. Add a Select Columns in Dataset module, and use it to select only the Month, DayofMonth, DayOfWeek, Carrier, OriginAirportID, DestAirportID, CRSDepTime, DepDelay, CRSArrTime, and ArrDelay columns.
3. Add an Edit Metadata module and use it to make the OriginAirportID, DestAirportID, and Carrier columns Categorical.
4. Add a Normalize Data module and use it to standardize the CRSDepTime, CRSArrTime, and DepDelay columns using the ZScore transformation method.
5. Add a Split Data module and use it to split the rows into 70% / 30% subsets. Use a random seed value of 0.
6. Add a Boosted Decision Tree Regression module and a Train Model module. Then use the default settings to train the model with the 70% data split to predict the ArrDelay label column.
7. Add a Score Model module, and use it to score the trained model using the 30% split of data.
8. Add an Evaluate Model module and use it to evaluate the results from the Score Model module.

### Test and Evaluate the Model

Now that you've built a basic machine learning model, you can test and evaluate it.

Run the experiment, and when it has finished, visualize the output of the Evaluate Model module. There are numerous metrics that you can use to evaluate a regression model, including the Root Mean Squared Error (RMSE), which indicates the mean variance between predicted and actual label values - in this case, the number of minutes on average by which predicted flight delays vary from actual flight delays.

What is the Root Mean Squared Error for your model?

**12.778422**

### Publish and Use the Model

To use your model to predict flight delays, you must publish the model as a web service.

1. Set up your experiment as a web service, creating a predictive experiment (if the option to do this is not available, save and re-run the experiment).
2. In the predictive experiment, add a Select Columns in Dataset module and place it between the Score Model and Web service output modules. Use this to select only the Scored Labels column.
3. Save and run the modified predictive experiment, and then deploy the web service.
4. Use Excel to test the web service, and generate predicted values for the input rows below:
```
Year	Month	DayofMonth	DayOfWeek	Carrier	OriginAirportID	DestAirportID	CRSDepTime	DepDelay	DepDel15	CRSArrTime	ArrDelay	ArrDel15	Cancelled
1	2014	4	19	5	DL	11433	13303	837	-3	0	1138	0	0	0
2	2014	5	6	1	AA	11298	12339	1805	0	0	2105	0	0	0
3	2014	6	19	3	AS	14893	13830	945	-4	0	1201	0	0	0
4	2014	6	20	4	WN	13204	14683	1750	84	1	1935	0	0	0
```

Enter the values predicted by your model for each input row:

Input Row 1: **-7.46363544464111**

Input Row 2: **-4.94854021072388**

Input Row 3: **-3.36134648323059**

Input Row 4: **83.0573196411133**
