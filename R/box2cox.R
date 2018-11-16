#' box2cox Transform Function

#' @param x  is the input of this function. x must be positive.
#' @param lambda  parameter
#' @return y is the output of this function. 

#' @export




box2cox <- function(x,lambda){
  
  if(any(x < 0)){
    x = x + abs(min(x)) + 1
    warning("the minimum constant value has been automatically added to make input positive.")
    
  }
  
  y <- x
  
  for(i in 1:length(lambda)){
    if(lambda[i]!= 0)
      y[i] = (x[i]^lambda[i] - 1) / lambda[i]
    else
      y[i] = log(x[i])
    
  }
  
  return(y)

}


