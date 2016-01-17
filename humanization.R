# Function for humanization numbers
# This function describes natural numbers in natural languages to be uderstanded in common way.

humnum <- function (x) {

  if ((abs(as.numeric(x)) >= 0) & (abs(as.numeric(x)) < 1000))  {
    
    cat (format(as.numeric(x), decimal.mark = ",", digits =  4))
  }
  
  if ((abs(x) >= 1000) & (abs(x) < 1000000))  {
    x <- x / 1000
    cat (format(x, decimal.mark = ",", digits =  4), "тыс.")
  }
  
  if ((abs(x) >= 1000000) & (abs(x) < 1000000000))  {
    x <- x / 1000000
    cat (format(x, decimal.mark = ",", digits =  4), "млн")
  }
  
  if ((abs(x) >= 1000000000) & (abs(x) < 1000000000000))  {
    x <- x / 1000000000
    cat (format(x, decimal.mark = ",", digits =  4), "млрд")
  }
  
  if ((abs(x) >= 1000000000000) & (abs(x) < 1000000000000000))  {
    x <- x / 1000000000000
    cat (format(x, decimal.mark = ",", digits =  4), "трлн")
  }
  
  if ((abs(x) >= 1000000000000000) & (abs(x) < 1000000000000000000))  {
    x <- x / 1000000000000000
    cat (format(x, decimal.mark = ",", digits =  4), "квадрлн")
  }
  
  if (abs(x) >= 1000000000000000000)  {
    cat (format(x, decimal.mark = ",", big.mark = " "))
  }
  
  
}