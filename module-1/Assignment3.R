# Exercise 1: Basic Arithmetic Operations
# Perform addition, subtraction, multiplication, and division of numbers.

# Example:
result1 <- 10 + 5
result2 <- 20 - 8
result3 <- 6 * 7
result4 <- 40 / 4

# Exercise 2: Conditional Statements
# Write code to determine if a number is positive, negative, or zero using if-else statements.

# Example:
num <- -3
if (num > 0) {
  message("The number is positive.")
} else if (num < 0) {
  message("The number is negative.")
} else {
  message("The number is zero.")
}

# Exercise 3: Loops
# Use a loop (for or while) to calculate the factorial of a number.

# Example:
factorial <- 1
num <- 5
for (i in 1:num) {
  factorial <- factorial * i
}
cat("Factorial of", num, "is", factorial, "\n")

# Exercise 4: Combining Control Structures
# Write code to find the sum of all even numbers between two given numbers (inclusive).

# Example:
start_num <- 1
end_num <- 10
sum_even <- 0

for (i in start_num:end_num) {
  if (i %% 2 == 0) {
    sum_even <- sum_even + i
  }
}
cat("Sum of even numbers between", start_num, "and", end_num, "is", sum_even, "\n")
