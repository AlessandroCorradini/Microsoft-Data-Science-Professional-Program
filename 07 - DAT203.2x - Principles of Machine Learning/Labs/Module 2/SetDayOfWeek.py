def day_of_week():  
    import pandas as pd
    ## First day in the dataset is Sunday
    days = pd.DataFrame([[0, 1, 2, 3, 4, 5, 6],
                        ["Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"]]).transpose()
    days.columns = ['weekday', 'dayOfWeek']                        
    return days  
    
def azureml_main():
    return day_of_week()