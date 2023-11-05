# Load necessary library
library(dplyr)

# Load the dataset (Replace with your dataset)
data <- read.csv("path/to/your/dataset.csv")

# Task a: Filter rows based on specific criteria
# Example: Retain rows where 'Age' is greater than or equal to 18
filtered_data <- data %>%
  filter(Age >= 18)

# Task b: Select specific columns of interest
# Example: Choose columns 'Name', 'Age', and 'Gender'
selected_data <- data %>%
  select(Name, Age, Gender)

# Task c: Create new variables or columns
# Example: Calculate a new column 'Birth_Year' based on 'Age'
mutated_data <- data %>%
  mutate(Birth_Year = 2023 - Age)

# Task d: Arrange data based on a variable (e.g., sort by 'Age' in ascending order)
arranged_data <- data %>%
  arrange(Age)

# Task e: Combine multiple dplyr functions in a pipeline
# Example: Filter rows, select columns, and arrange data in a single pipeline
combined_manipulation <- data %>%
  filter(Age >= 18) %>%
  select(Name, Age, Gender) %>%
  arrange(Age)

# Save the final manipulated dataset as a CSV file
write.csv(combined_manipulation, "manipulated_dataset.csv", row.names = FALSE)

# Optionally, you can add comments to explain each step of the data manipulation process.
