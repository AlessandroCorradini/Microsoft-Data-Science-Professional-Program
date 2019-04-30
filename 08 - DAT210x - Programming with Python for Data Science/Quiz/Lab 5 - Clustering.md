# Lab 5 - Clustering

## Lab Assignment 1

Many U.S. cities, the U.S. federal government, and even other cities and governments abroad have started subscribing to an Open Data policy, because some data should be transparent and available to everyone to use and republish freely, without restrictions from copyright, patents, or other mechanisms of control. After reading their terms of use, in this lab you'll be exploring the City of Chicago's Crime data set, which is part of their Open Data initiative.

1. Start by navigating over to the City of Chicago's Crimes dataset exploration page. It lists crimes from 2001 to the present, but you'll only be targeting Gambling. The city's website itself has hundreds of other datasets you can browse and do machine learning on.
2. Open up the /Module5/assignment1.py starter code, and follow the directions to acquire the dataset and properly set it up.
3. Fill out the doKMeans method to find and plot seven clusters and print out their centroids. These could be places a police officer investigates to check for on-going illegal activities.
4. Re-run your assignment a few times over, looking at your printed and plotted results. Then answer the following questions.

Note: If Pandas complains about your data, you can use dropna() on any row that has nans in it.

### Lab Questions

You'll notice that the cluster assignments are pretty accurate. Most of them should be spot-on, dead-center. Only one cluster might have been assigned to outliers. Given the results, answer the following questions to the best of your ability:

Did your centroid locations change after you limited the date range to +2011?

**They moved slightly**

What about during successive runs of your assignment? Any centroid location changes happened there?

- All clusters have moved, and the cluster arrangement isn't anything like it was before
- **All clusters have moved but only slightly, and the centroid arrangement still has the same shape for the most part**
- The clusters did not really move at all, or if they did, it wasn't noticeable
- The cluster centroids are identical according to the print statement output

### Lab Assignment 2

The spirit of data science includes exploration, traversing the unknown, and applying a deep understanding of the challenge you're facing. In an academic setting, it's hard to duplicate these tasks, but this lab will attempt to take a few steps away from the traditional, textbook, "plug the equation in" pattern, so you can get a taste of what analyzing data in the real world is all about.

After the September 11 attacks, a series of secret regulations, laws, and processes were enacted, perhaps to better protect the citizens of the United States. These processes continued through president Bush's term and were renewed and and strengthened during the Obama administration. Then, on May 24, 2006, the United States Foreign Intelligence Surveillance Court (FISC) made a fundamental shift in its approach to Section 215 of the Patriot Act, permitting the FBI to compel production of "business records" relevant to terrorism investigations, which are shared with the NSA. The court now defined as business records the entirety of a telephone company's call database, also known as Call Detail Records (CDR or metadata).

News of this came to public light after an ex-NSA contractor leaked the information, and a few more questions were raised when it was further discovered that not just the call records of suspected terrorists were being collected in bulk... but perhaps the entirety of Americans as a whole. After all, if you know someone who knows someone who knows someone, your private records are relevant to a terrorism investigation. The white house quickly reassured the public in a press release that "Nobody is listening to your telephone calls," since, "that's not what this program is about." The public was greatly relieved.

The questions you'll be exploring in this lab assignment using K-Means are: exactly how useful is telephone metadata? It must have some use, otherwise the government wouldn't have invested however many millions they did into it secretly collecting it from phone carriers. Also what kind of intelligence can you extract from CDR metadata besides its face value?

You will be using a sample CDR dataset generated for 10 people living in the Dallas, Texas metroplex area. Your task will be to attempt to do what many researchers have already successfully done - partly de-anonymize the CDR data. People generally behave in predictable manners, moving from home to work with a few errands in between. With enough call data, given a few K-locations of interest, K-Means should be able to isolate rather easily the geolocations where a person spends the most of their time.

Note: to safeguard from doxing people, the CDR dataset you'll be using for this assignment was generated using the tools available in the Dive Deeper section. CDRs are at least supposed to be protected by privacy laws, and are the basis for proprietary revenue calculations. In reality, there are quite a few public CDRs out there. Much information can be discerned from them such as social networks, criminal acts, and believe it or not, even the spread of decreases as was demonstrated by Flowminder Foundation paper on Ebola. 

1. Open up the starter code in /Module5/assignment2.py and read through it all. It's long, so make sure you understand everything that is being asked for you before proceeding.
2. Load up the CDR dataset from /Module5/Datasets/CDR.csv. Do your due diligence to make sure it's been loaded correctly and all the features and rows match up.
3. Pick the first unique user in the list to examine. Follow the steps in the assignment file to approximate where the user lives.
4. Once you have a (Latitude, Longitude) coordinate pair, drop them into Google Maps. Just do a search for the "{Lat, Lon}". So if your centroid is located at Longitude = -96.949246 and Latitude = 32.953856, then do a maps search for "32.953856, -96.949246".
5. Answer the questions below.

### Lab Question

Use Google Maps to find the location of the following apartment complexes in the Dallas, TX, USA area. Then keeping that information in mind, answer in the question:

Which of the following apartment complexes does the first user in the CDR, phone number: 04638472273, likely live at?

- The Lexington at Valley Ranch
- **Spanish Grove Apartments**
- Tenison at White Rock
- Downtown Dallas Apartments
- Grand Estates @ Kessler Park

## Lab Assignment 3

Continuing on with the previous lab, this time you'll validate your results by comparing the user's weekday activity to their weekend activity. To get started, use the starter code in /Module5/assignment3.py.

1. Load up the same CDR dataset into a dataframe, and extract the unique "In" phone numbers. You don't have to save it as a Python list this time, and can keep it as an NDArray. The previous lab had you convert to a list just so you'd have the experience doing it.
2. Create a new slice, once again for the first unique number in the CDR. Instead of limiting it to Weekend only entries, index it so that the slice only contains Weekday entries, Mon-Fri, and so that it occurs any time before 5pm.
3. Run K-Means on the data with K=4. Plot the cellphone towers the user connected to, and then plot the cluster centers using a different marker and color.
4. Answer the questions below.

### Lab Questions

Answer the following questions given the data you just recorded, for K=4, and CallTime is less than 5pm (that is "17:00:00"), and the call's day-of-week being a weekday.

The users home location will likely be near the centroid with the second most attached samples. Does your approximated home location from this map coincide with the home approximation from the previous lab?

- Yes, they are exactly the same
- **Yes, they match, but there is a slight difference**
- No, you can tell that they should match; however, their locations are *very* different
- No, they are completely different

Given the indexed time range, and the times people usually receive / make calls, the cluster with the most samples is likely to be the user's work location. What is the phone number of the user who works at the US Post Office near Cockrell Hill Rd?

**289-436-5987**

Run your assignment with K=3. Look at the code that gets the mean CallTime value for the cluster with the least amount of samples assigned to it (the cluster we suspect corresponds to the user transiting to work). What hour is the average CallTime value of that cluster closest to?

**8 am**

## Lab Assignment 4

Feature scaling was first discussed within one of the PCA lab assignments, but this lab will really familiarize you with it. You will be making use of the Wholesale Customer's dataset, hosted by UCI's Machine Learning. Unsupervised clustering scans your features and then groups your samples based off of them. Therefore you should have a solid understanding of what each of your features are, which one's you should remove, and how to scale them in order for the 'blind' clustering to preform correctly and do what you want it to do.

1. Visit the UCI dataset page and read all the content available, so you become accustomed to the dataset. Then, load up the starter code from Module5/assignment4.py and as usual, read through that it in its entirety as well.
2. The first thing that needs to be answered is, what is it you'd like to accomplish by clustering this dataset? There are a couple of potential questions you could ask given the data, and the one you choose will drive how you manipulate your dataset. Are you interested in which products people buy together, so that you can place them near one another in your store, or recommend the pair product when shopping online? Perhaps you're more interested in which products people are spending the most money on? Or maybe your interest just lies in identifying what individual products people are buying. All of this must be considered.
3. For the purposes of this lab, you'll assume you're interested in overall customer behavior rather than channel or region specific behavior, so you'll drop those two fields from the dataset. If you were a large wholesaler with branches all over the nation, you'd want to keep those fields in so that you can duplicate the process outlined in the assignment to particular areas and vertical markets.
4. Complete the assignment and answer the questions below.

### Lab Question

Which of SciKit-Learn's preprocessors causes the principal components to fan out as much as possible in an arrangement unlike the others?

- StanadardScaler
- MinMaxScaler
- **Normalize**
- Scale
- No scaling necessary