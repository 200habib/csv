import pandas as pd
import os

input_path = "/data/brown_data/raw_data.csv"
output_path = "/data/gold_data/final_dataset.csv"

df = pd.read_csv(input_path)

df.dropna(inplace=True)
df.drop_duplicates(inplace=True)
df['Date'] = pd.to_datetime(df['Date'], format='mixed')

df.to_csv(output_path, index=False)

print(f"\nFile created: {output_path}")
