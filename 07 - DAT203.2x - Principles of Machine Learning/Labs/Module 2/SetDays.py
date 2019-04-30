def set_days(df):  
    import pandas as pd
    df['days'] = pd.Series(range(df.shape[0]))/24
    df['days'] = df['days'].astype('int')
    return df  
    
def azureml_main(df):
    return set_days(df)
 
