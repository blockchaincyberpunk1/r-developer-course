# Load the necessary libraries
library(dplyr)      # For data manipulation
library(ggplot2)    # For data visualization

# Load the dataset (replace with the actual path to your dataset)
grocery_data <- read.csv("products_data.csv")

# a. Calculate and summarize key statistics for relevant numerical variables
# Calculate mean, median, standard deviation, and quartiles for 'Current Price'
price_stats <- summary(grocery_data$`Current Price`)
mean_price <- mean(grocery_data$`Current Price`)
median_price <- median(grocery_data$`Current Price`)
sd_price <- sd(grocery_data$`Current Price`)
quartiles_price <- quantile(grocery_data$`Current Price`, probs = c(0.25, 0.75))

# b. Examine the structure of the dataset to understand data types and variable names
structure_info <- str(grocery_data)

# c. Identify and handle missing values (e.g., impute with mean for numerical variables)
missing_values <- sum(is.na(grocery_data))
# Impute missing values in the 'Current Price' column with the mean
grocery_data$`Current Price`[is.na(grocery_data$`Current Price`)] <- mean_price

# d. Explore the distribution of categorical variables by counting unique values
category_counts <- table(grocery_data$Category)

# e. Consider using summary tables or cross-tabulations to gain insights into relationships between variables
# Example: Cross-tabulation of 'Category' and 'Units'
cross_tab <- xtabs(~ Category + Units, data = grocery_data)

# f. Creating visualizations to explore grocery product trends
# Histogram for 'Current Price'
histogram <- ggplot(grocery_data, aes(x = `Current Price`)) +
  geom_histogram(binwidth = 0.5, fill = "blue", color = "black") +
  labs(title = "Histogram of Current Price", x = "Price") +
  theme_minimal()

# Save the plot to a file (optional)
ggsave("histogram.png", plot = histogram, width = 8, height = 6)

# You can also display the plot in RStudio by simply typing 'histogram'

# Print the results
cat("Summary Statistics for 'Current Price':\n", price_stats)
cat("\nMean Price: ", mean_price)
cat("\nMedian Price: ", median_price)
cat("\nStandard Deviation: ", sd_price)
cat("\nQuartiles: ", quartiles_price, "\n")

cat("\nStructure of the Dataset:\n")
print(structure_info)

cat("\nMissing Values: ", missing_values, "\n")

cat("\nCategory Counts:\n")
print(category_counts)

cat("\nCross-Tabulation of Category and Units:\n")
print(cross_tab)
