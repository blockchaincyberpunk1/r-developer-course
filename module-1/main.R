source("calculator.R")

num1 <- 5
num2 <- 3

result_add <- add(num1, num2)
result_subtract <- subtract(10, 4)
result_multiply <- multiply(6, 7)
result_divide <- divide(20, 5)

if (!is.null(result_divide)) {
    cat("Addition:", result_add, "\n")
    cat("Subtraction:", result_subtract, "\n")
    cat("Multiplication:", result_multiply, "\n")
    cat("Division:", result_divide, "\n")
}
