# Sample Dataset (Replace with your dataset)
data <- read.csv("path/to/your/dataset.csv")

# Function 1: Calculate the mean of a numeric variable
calculate_mean <- function(data, variable_name) {
  variable <- data[[variable_name]]
  mean_value <- mean(variable, na.rm = TRUE)
  return(mean_value)
}

# Function 2: Calculate the standard deviation of a numeric variable
calculate_std_dev <- function(data, variable_name) {
  variable <- data[[variable_name]]
  std_dev <- sd(variable, na.rm = TRUE)
  return(std_dev)
}

# Function 3: Normalize a numeric variable (scale to mean = 0, std dev = 1)
normalize_variable <- function(data, variable_name) {
  variable <- data[[variable_name]]
  normalized_variable <- scale(variable)
  return(normalized_variable)
}

# Function 4: Filter rows based on a specific criteria (e.g., variable > threshold)
filter_rows <- function(data, variable_name, threshold) {
  filtered_data <- data[data[[variable_name]] > threshold, ]
  return(filtered_data)
}

# Function 5: Calculate summary statistics for a numeric variable
calculate_summary_stats <- function(data, variable_name) {
  variable <- data[[variable_name]]
  mean_value <- mean(variable, na.rm = TRUE)
  median_value <- median(variable, na.rm = TRUE)
  min_value <- min(variable, na.rm = TRUE)
  max_value <- max(variable, na.rm = TRUE)
  
  summary_stats <- data.frame(
    Mean = mean_value,
    Median = median_value,
    Min = min_value,
    Max = max_value
  )
  return(summary_stats)
}

# Function 6: Perform a data transformation (e.g., log transformation) on a numeric variable
log_transform <- function(data, variable_name) {
  variable <- data[[variable_name]]
  transformed_variable <- log(variable)
  return(transformed_variable)
}

# Apply the functions to the dataset
mean_result <- calculate_mean(data, "NumericVariable")
std_dev_result <- calculate_std_dev(data, "NumericVariable")
normalized_data <- normalize_variable(data, "NumericVariable")
filtered_data <- filter_rows(data, "NumericVariable", 5)
summary_stats_result <- calculate_summary_stats(data, "NumericVariable")
log_transformed_data <- log_transform(data, "NumericVariable")

# Display the results
print("Mean of NumericVariable:")
print(mean_result)

print("Standard Deviation of NumericVariable:")
print(std_dev_result)

print("Normalized NumericVariable:")
print(head(normalized_data))

print("Filtered Data (NumericVariable > 5):")
print(head(filtered_data))

print("Summary Statistics for NumericVariable:")
print(summary_stats_result)

print("Log Transformed NumericVariable:")
print(head(log_transformed_data))
