# Load necessary libraries
library(ggplot2)

# Load the dataset (Replace with your dataset)
data <- read.csv("path/to/your/dataset.csv")

# Task a: Calculate basic statistical measures
numeric_variable <- data$NumericVariable

# Calculate mean
mean_value <- mean(numeric_variable)

# Calculate median
median_value <- median(numeric_variable)

# Calculate variance
variance_value <- var(numeric_variable)

# Calculate standard deviation
std_dev_value <- sd(numeric_variable)

# Calculate quartiles
quartiles <- quantile(numeric_variable, probs = c(0.25, 0.5, 0.75))

# Display the results
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Variance:", variance_value, "\n")
cat("Standard Deviation:", std_dev_value, "\n")
cat("Quartiles:", quartiles, "\n")

# Task b: Conduct hypothesis tests (example: t-test)
group1 <- data$Group1NumericVariable
group2 <- data$Group2NumericVariable

# Perform a t-test to compare means of two groups
t_test_result <- t.test(group1, group2)

# Display t-test result
print("T-Test Result:")
print(t_test_result)

# Task c: Visualize data distributions
# Create a histogram of the numeric variable
ggplot(data, aes(x = NumericVariable)) +
  geom_histogram(binwidth = 1, fill = "blue", color = "black") +
  labs(title = "Histogram of Numeric Variable",
       x = "Value",
       y = "Frequency")

# Create a box plot to visualize data distribution by groups
ggplot(data, aes(x = Group, y = NumericVariable)) +
  geom_boxplot(fill = "lightblue") +
  labs(title = "Box Plot of Numeric Variable by Group",
       x = "Group",
       y = "Value")

# Create a scatter plot to visualize relationships between two numeric variables
ggplot(data, aes(x = NumericVariable1, y = NumericVariable2)) +
  geom_point(color = "blue") +
  labs(title = "Scatter Plot of Numeric Variables",
       x = "Variable 1",
       y = "Variable 2")

# You can add more visualizations as needed for your analysis

# Task: Write a summary report
# Include your findings and insights based on the statistical analysis and visualizations.
# Provide explanations and interpretations of the results.

# Save the visualizations as image files (optional)
# ggsave("histogram.png", plot = last_plot(), device = "png")
# ggsave("boxplot.png", plot = last_plot(), device = "png")
# ggsave("scatterplot.png", plot = last_plot(), device = "png")
