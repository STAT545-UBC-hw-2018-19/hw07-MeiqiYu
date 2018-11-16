#' Two parameter box2cox Transform Function

#' @param x  is the input of this function. x must be positive.
#' @param lambda1  parameter
#' @param lambda12  parameter
#' @return y is the output of this function. 

#' @export

box2cox_2parameter <- function(x,lambda1,lambda2){
  
  if(any(x < 0)){
    x = x + abs(min(x)) + 1
    warning("the minimum constant value has been automatically added to make input positive.")
    
  }
  
  y <- x

  if(lambda1!= 0)
     y = ((x+lambda2)^lambda1 - 1) / lambda1
   else
     y = log(x+lambda2)
    

  return(y)
  
}
  
  
