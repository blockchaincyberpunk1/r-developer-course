# Load necessary library
library(dplyr)
library(ggplot2)  # For visualization

# Load the complex dataset (Replace with your dataset)
data <- read.csv("path/to/your/complex_dataset.csv")

# Task a: Apply dplyr functions for complex data transformations
# Example: Group data by 'Category' and calculate mean and standard deviation for 'Value'
transformed_data <- data %>%
  group_by(Category) %>%
  summarise(Mean_Value = mean(Value, na.rm = TRUE),
            StdDev_Value = sd(Value, na.rm = TRUE))

# Task b: Handling missing data, outliers, merging/joining, reshaping (as needed)
# Example: Impute missing values with the mean of the column
imputed_data <- data %>%
  mutate(Value = ifelse(is.na(Value), mean(Value, na.rm = TRUE), Value))

# Task c: Create custom functions using dplyr verbs
# Example: Create a custom function to filter rows with values above a threshold
filter_custom <- function(df, threshold) {
  df %>%
    filter(Value > threshold)
}

# Apply the custom function
filtered_data <- filter_custom(data, 50)

# Task d: Generate advanced visualizations
# Example: Create a heatmap of 'Value' by 'Category' and 'Time'
heatmap_data <- data %>%
  spread(key = Time, value = Value) %>%
  select(-Category)

ggplot(heatmap_data, aes(x = Category, y = Time, fill = Value)) +
  geom_tile() +
  labs(title = "Heatmap of Value by Category and Time",
       x = "Category",
       y = "Time") +
  scale_fill_gradient(low = "blue", high = "red")

# Save the visualization as an image file (optional)
# ggsave("heatmap.png", plot = last_plot(), device = "png")

# Optionally, you can add comments to explain each step of the data manipulation process.
