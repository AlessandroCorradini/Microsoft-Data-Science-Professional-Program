def diabetes_bar(df):   
    import matplotlib
    matplotlib.use('agg')  # Set backend
    import numpy as np
    import matplotlib.pyplot as plt
    
## Create a series of bar plots for the various levels of the
## string columns in the data frame by readmi_class. 
    names = df.columns.tolist()
    for col in names:
        if(df[col].dtype not in [np.int64, np.int32, np.float64]):
            temp1 = df.ix[df.readmitted == 'YES', col].value_counts()
            temp0 = df.ix[df.readmitted == 'NO', col].value_counts() 
        
            fig = plt.figure(figsize = (12,6))
            fig.clf()
            ax1 = fig.add_subplot(1, 2, 1)
            ax0 = fig.add_subplot(1, 2, 2) 
            temp1.plot(kind = 'bar', ax = ax1)
            ax1.set_title('Values of ' + col + '\n for readmitted patients')
            temp0.plot(kind = 'bar', ax = ax0)
            ax0.set_title('Values of ' + col + '\n for patients not readmitted')
            fig.savefig('bar_' + col + '.png')
            
    return 'Done'

def diabetes_box(df):
    import matplotlib
    matplotlib.use('agg')  # Set backend
    import numpy as np
    import matplotlib.pyplot as plt
    
## Now make some box plots of the columbns with numerical values.
    names = df.columns.tolist()
    for col in names:
        if(df[col].dtype in [np.int64, np.int32, np.float64]):
            temp1 = df.ix[df.readmitted == 'YES', col]
            temp0 = df.ix[df.readmitted == 'NO', col]  
             
            fig = plt.figure(figsize = (12,6))
            fig.clf()
            ax1 = fig.add_subplot(1, 2, 1)
            ax0 = fig.add_subplot(1, 2, 2) 
            ax1.boxplot(temp1.as_matrix())
            ax1.set_title('Box plot of ' + col + '\n for readmitted patients')
            ax0.boxplot(temp0.as_matrix())
            ax0.set_title('Box plot of ' + col + '\n for patients not readmitted')
            fig.savefig('box_' + col + '.png')

    return 'Done'
    
def diabetes_hist(df):
    import matplotlib
    matplotlib.use('agg')  # Set backend
    import numpy as np
    import matplotlib.pyplot as plt
    
## Now make historgrams of the columbns with numerical values.
    names = df.columns.tolist()
    for col in names:
        if(df[col].dtype in [np.int64, np.int32, np.float64]):
            temp1 = df.ix[df.readmitted == 'YES', col]
            temp0 = df.ix[df.readmitted == 'NO', col]  
             
            fig = plt.figure(figsize = (12,6))
            fig.clf()
            ax1 = fig.add_subplot(1, 2, 1)
            ax0 = fig.add_subplot(1, 2, 2) 
            ax1.hist(temp1.as_matrix(), bins = 30)
            ax1.set_title('Histogram of ' + col + '\n for readmitted patients')
            ax0.hist(temp0.as_matrix(), bins = 30)
            ax0.set_title('Histogram of ' + col + '\n for patients not readmitted')
            fig.savefig('hist_' + col + '.png')

    return 'Done'    

