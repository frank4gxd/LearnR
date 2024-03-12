
my_var_func <- function(dat)
{
  c=sum((dat-mean(dat))^2)/(length(dat)-1)
  function(multic)
  {
    return(c*multic)
  }
    
}

