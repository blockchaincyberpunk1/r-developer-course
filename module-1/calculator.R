add <- function(a, b) {
    return(a + b)
}

subtract <- function(a, b) {
    return(a - b)
}

multiply <- function(a, b) {
    return(a * b)
}

divide <- function(a, b) {
    if (b == 0) {
        cat("Cannot divide by zero!\n")
        return(NULL)
    }
    return(a / b)
}
