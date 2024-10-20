"""
    Description: In this project I want to explore the functionalities of the Pandas library.
"""
import pandas as pd


# Saving the file path to the dataset.
path = "Customer Purchasing Behaviors.csv"

# Loading the data into a dataframe.
df = pd.read_csv(path)

# Displaying 5 rows of the data.
print(df.head())

# Displaying the last 5 rows of the data.
print(df.tail())

"""
    Pandas DataFrame attributes.
"""

# Shape of the dataset.
df_shape = df.shape
df_row_count = df_shape[0]
df_column_count = df_shape[1]
print(df_row_count)
print(df_column_count)

# DataFrame columns attribute.
print(df.columns)  # Displaying the column names of the data.

# DataFrame size attribute.
print(df.size)  # Displaying the size of the DataFrame

# Displaying the dtypes of each column.
print(df.dtypes)

# DataFrame empty attribute. Returns True if the DataFrame is empty, else False.
print(df.empty)

# DataFrame values attribute.
print(df.values)

# DataFrame T attribute.
print(df.T)

# DataFrame index attribute.
print(df.index)

# DataFrame axes attribute.
print(df.axes)

# DataFrame ndim attribute.
print(df.ndim)


# Saving every column as a variable.
user_id = df["user_id"]
age = df["age"]
annual_income = df["annual_income"]
purchase_amount = df["purchase_amount"]
loyalty_score = df["loyalty_score"]
region = df["region"]
purchase_frequency = df["purchase_frequency"]

# Displaying the values of the columns.
print(user_id)
print(age)
print(annual_income)
print(purchase_amount)
print(loyalty_score)
print(region)
print(purchase_frequency)

"""
    The Pandas describe() function.
"""

# Using the Pandas describe() function to get some summary statistics for all numerical columns in the DataFrame.
# Columns with not numerical data will be ignored.
df_describe = df.describe()
print(df_describe)

# describe() returns a Pandas DataFrame or a Pandas Series. This means you can access the summary statistic for every
# numerical column as follows:
print(df_describe["user_id"])  # summary statistics for the column user_id.
print(df_describe["age"])  # summary statistics for the column age.
print(df_describe["annual_income"])  # summary statistics for the column annual_income.
print(df_describe["purchase_amount"])  # summary statistics for the column purchase_amount.
print(df_describe["loyalty_score"])  # summary statistics for the column loyalty_score.
print(df_describe["purchase_frequency"])  # summary statistics for the column purchase_frequency.

# You can also access every statistics for each numerical column. Here an example for the column age.
print("The count of the column age is:", df_describe.iloc[0, 1])
print("The mean of the column age is:", df_describe.iloc[1, 1])
print("The standard deviation of the column age is:", df_describe.iloc[2, 1])
print("The minimum of the column age is:", df_describe.iloc[3, 1])
print("The 25 percentile of the column age is:", df_describe.iloc[4, 1])
print("The 50 percentile of the column age is:", df_describe.iloc[5, 1])
print("The 75 percentile of the column age is:", df_describe.iloc[6, 1])
print("The maximum of the column age is:", df_describe.iloc[7, 1])

# You can decide what percentiles you want to display.
df_describe_percentiles = df.describe(percentiles=[0.1, 0.2, 0.3, 0.4, 0.5])
print(df_describe_percentiles)


"""
    Statistical functions in Pandas.
"""

# Computing some statistics for the variable annual_income.
annual_income_sum = annual_income.sum()
print(annual_income_sum)

annual_income_mean = annual_income.mean()
print(annual_income_mean)

annual_income_min = annual_income.min()
print(annual_income_min)

annual_income_max = annual_income.max()
print(annual_income_max)

annual_income_median = annual_income.median()
print(annual_income_median)

annual_income_varianz = annual_income.var()
print(annual_income_varianz)

annual_income_standard_deviation = annual_income.std()
print(annual_income_standard_deviation)

annual_income_count = annual_income.count()
print(annual_income_count)
