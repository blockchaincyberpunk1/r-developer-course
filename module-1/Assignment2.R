# Load necessary libraries
library(dplyr)

# Load the dataset (Replace with your dataset)
data <- read.csv("path/to/your/dataset.csv")

# Task a: Select specific columns of interest
selected_columns <- data %>% select(Column1, Column2, Column3)

# Task b: Filter rows based on specific criteria
# Example: Retain rows where 'Column1' is greater than 50
filtered_data <- data %>% filter(Column1 > 50)

# Task c: Create new variables or columns
# Example: Create a new column 'NewColumn' as a sum of 'Column2' and 'Column3'
modified_data <- data %>% mutate(NewColumn = Column2 + Column3)

# Save the modified dataset as a CSV file
write.csv(modified_data, "modified_dataset.csv", row.names = FALSE)

# Display the first few rows of the modified dataset
head(modified_data)

# Optionally, you can add comments to explain each step of the data manipulation process.
