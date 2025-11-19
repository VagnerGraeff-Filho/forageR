velocidade_media <-
function(distancia, tempo) {
  if(length(distancia) != length(tempo)) {
    stop("Distância e tempo devem ter o mesmo comprimento")
  }
  velocidade <- distancia / tempo
  return(velocidade)
}
