#' Calcular velocidade média de caminhada
#'
#' Função genérica para calcular velocidade média (cm/s)
#'
#' @param distancia Distância percorrida (cm)
#' @param tempo Tempo (s)
#'
#' @return Velocidade média (cm/s)
#'
#' @examples
#' calcular_velocidade(10, 5)
#'
#' @export
calcular_velocidade <- function(distancia, tempo) {
  if (!is.numeric(distancia) || !is.numeric(tempo)) {
    stop("distancia e tempo precisam ser numéricos")
  }
  if (tempo <= 0) stop("tempo deve ser maior que zero")
  distancia / tempo
}
