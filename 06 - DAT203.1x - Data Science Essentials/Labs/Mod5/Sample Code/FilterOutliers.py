def id_outlier(df):
    ## Create a vector of 0 of length equal to the number of rows
    temp = [0] * df.shape[0]
    ## test each outlier condition and mark with a 1 as required
    for i, x in enumerate(df['enginesize']):
        if (x > 190): temp[i] = 1 
    for i, x in enumerate(df['weight']):
        if (x > 3500): temp[i] = 1 
    for i, x in enumerate(df['citympg']):
        if (x > 40): temp[i] = 1      
    df['outlier'] = temp # append a column to the data frame
    return df


def azureml_main(df): 
    ## Define the plot columns
    df = id_outlier(df)  # mark outliers       
    df = df[df.outlier == 0] # filter for outliers
    df.drop('outlier', axis = 1, inplace = True)
    return df
