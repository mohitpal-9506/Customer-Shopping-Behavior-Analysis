import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("dataset/customer_shopping_behavior.csv")

print("Dataset Shape")
print(df.shape)

print("\nTotal Sales")
print(df["Purchase Amount (USD)"].sum())

print("\nAverage Purchase")
print(df["Purchase Amount (USD)"].mean())

print("\nCategory Wise Sales")
print(df.groupby("Category")["Purchase Amount (USD)"].sum())

sales = df.groupby("Category")["Purchase Amount (USD)"].sum()

sales.plot(kind="bar")

plt.title("Category Wise Sales")
plt.xlabel("Category")
plt.ylabel("Sales")

plt.show()
df.to_csv("python/customer_shopping_clean.csv", index=False)

print("Clean dataset saved successfully!")
