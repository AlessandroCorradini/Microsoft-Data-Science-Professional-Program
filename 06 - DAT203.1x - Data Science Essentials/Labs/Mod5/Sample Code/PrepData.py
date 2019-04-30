## Function to prepare the automotive data
def prep_auto(df, col_names):
    import pandas as pd
    import numpy as np
    
    ## Assign names to columns
    df.columns = col_names
    
    ## Drop unneeded columns
    drop_list = ['symboling', 'normalizedlosses', 'makeid']    
    df.drop(drop_list, axis = 1, inplace = True)
    
    ## Remove rows with missing values    
    df = df[~pd.isnull(df).any(axis=1)]
    
    ## Add a log transformed column for price
    df['lnprice'] = np.log(df['price'].as_matrix()) 
    
    ## Remove duplicate rows
    df.drop_duplicates(inplace = True) 
    
    ## Create a column with new levels for the number of cylinders
    df['cylinders'] = ['four-or-less' if x in ['two', 'three', 'four'] else 
                                 ('five-six' if x in ['five', 'six'] else 
                                 'eight-twelve') for x in df['cylinders']]    
    return df     

def azureml_main(df):   
    ## Define column names
    col_names = ['symboling', 'normalizedlosses', 'makeid', 'fueltype', 'aspiration', 'doors',
       'body', 'drive', 'engineloc', 'wheelbase',
       'length', 'width', 'height', 'weight', 'enginetype',
       'cylinders', 'enginesize', 'fuelsystem', 'bore', 'stroke',
       'compression', 'horsepower', 'rpm', 'citympg',
       'highwaympg', 'price', 'make']
       
    ## Call function to prep auto data and return       
    return prep_auto(df, col_names)
      