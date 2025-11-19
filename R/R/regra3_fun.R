regra3 <-
function(a, b, y) {
  if (y == 0) stop("y não pode ser zero.")
  x <- (y * b) / a
  return(x)
}
