import pandas as pd
import os

df.dropna(inplace=True)
df.drop_duplicates(inplace=True)
df['Date'] = pd.to_datetime(df['Date'], format='mixed')

output_path = os.path.join("3_gold", "data_final.csv")
df.to_csv(output_path, index=False)
print(f"\nFile creato: {output_path}")
