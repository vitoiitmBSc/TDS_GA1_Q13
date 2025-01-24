import pandas as pd

# Load the data files with the appropriate encoding
data1 = pd.read_csv('data1.csv', encoding='cp1252')
data2 = pd.read_csv('data2.csv', encoding='utf-8')
data3 = pd.read_csv('data3.txt', encoding='utf-16', sep='\t')

# Combine all data into a single DataFrame
all_data = pd.concat([data1, data2, data3])

# Filter the data to include only rows with symbol ‡ or ‚
filtered_data = all_data[all_data['symbol'].isin(['‡', '‚'])]

# Sum the values of the filtered rows
total_sum = filtered_data['value'].sum()

print(total_sum)
print("jai ganesh")
print(" this is new change")
print(" First Make a change in the file and then put a message and then push")
