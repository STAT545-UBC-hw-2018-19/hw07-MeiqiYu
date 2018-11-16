#' Reverse box2cox Transform Function

#' @param x  is the input of this function.
#' @param lambda  parameter
#' @return y is the output of this function. 

#' @export


box2cox_reverse <- function(x,lambda){
  
  if(any(x < 0)){
    x = x + abs(min(x)) + 1
    warning("the minimum constant value has been automatically added to make input positive.")
    
  }
  
  y <- x
  
  for(i in 1:length(lambda)){
    if(lambda[i]!= 0)
      y[i] = (lambda[i]*x[i] + 1) ^ (1/lambda[i])
    else
      y[i] = exp(x[i])
    
  }
  
  return(y)
  
}