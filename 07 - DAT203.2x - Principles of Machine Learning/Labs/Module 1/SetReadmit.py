def set_readmit_class(x):
    return ['NO' if (y == 'NO') else 'YES' for y in x]

def azureml_main(df):
    df['readmitted'] = set_readmit_class(df['readmitted'])
    return df
