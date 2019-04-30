def ts_bikes(df, times):
    import matplotlib
    matplotlib.use('agg')  # Set backend
    import matplotlib.pyplot as plt
    for tm in times:
        fig = plt.figure(figsize=(8, 6))
        fig.clf()
        ax = fig.gca()
        df[df.hr == tm].plot(kind = 'line', 
                              x = 'days', y = 'cnt', ax = ax)          
        df[df.hr == tm].plot(kind = 'line', 
                              x = 'days', y = 'predicted', color = 'red', ax = ax)                                    
        plt.xlabel("Days from start")
        plt.ylabel("Number of bikes rented")
        plt.title("Bikes rented for hour = " + str(tm))
        fig.savefig('ts_' + str(tm) + '.png')
    return 'Done'

def resids(df):
    df['resids'] = df.predicted - df.cnt
    return df        
        
def box_resids(df):
    import matplotlib
    matplotlib.use('agg')  # Set backend
    import matplotlib.pyplot as plt
    
    df = resids(df)
    
    fig = plt.figure(figsize=(12, 6))
    fig.clf()
    ax = fig.gca()  
    df.boxplot(column = ['resids'], by = ['hr'], ax = ax)   
    plt.xlabel('')
    plt.ylabel('Residuals')
    fig.savefig('boxes' + '.png')
    return 'Done'
    
 
def ts_resids_hist(df, times):
    import matplotlib
    matplotlib.use('agg')  # Set backend
    import matplotlib.pyplot as plt
    for tm in times:
        fig = plt.figure(figsize=(8, 6))
        fig.clf()
        ax = fig.gca()
        ax.hist(df.ix[df.hr == tm, 'resids'].as_matrix(), bins = 30)
        plt.xlabel("Residuals")
        plt.ylabel("Density")
        plt.title("Histograms of residuals for hour = " + str(tm))
        fig.savefig('hist_' + str(tm) + '.png')
       
    return 'Done'


def azureml_main(df):
    df = df.sort(['days', 'hr'], axis = 0, ascending = True)
    times = [6, 8, 10, 12, 14, 16, 18, 20, 22]
    ts_bikes(df, times)
    box_resids(df)
    ts_resids_hist(df, times)
    return df  
   