def prep_admissions(admissions):
    import pandas as pd
    admissions['admission_type_description'] = ['unknown' if ((x in ['Not Available', 'Not Mapped', 'NULL']) | (pd.isnull(x))) else x 
                                                 for x in admissions['admission_type_description']]
    return admissions

def azureml_main(df):
    df = prep_admissions(df)
    return df
