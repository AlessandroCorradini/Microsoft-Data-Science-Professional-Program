def azureml_main(creditframe):
    drop_cols = ['SexAndStatus',
        'OtherDetorsGuarantors']
    creditframe.drop(drop_cols, axis = 1, inplace = True)
    return creditframe

