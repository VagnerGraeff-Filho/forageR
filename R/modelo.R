#' Regra de 3 simples
#' @param a valor a
#' @param b valor b
#' @param y valor y (não pode ser zero)
#' @return resultado da regra de 3
#' @export
regra3 <- function(a, b, y) {
  if (y == 0) stop("y não pode ser zero.")
  (y * b) / a
}

#' Velocidade média
#' @param distancia vetor de distâncias
#' @param tempo vetor de tempos
#' @return vetor de velocidades
#' @export
velocidade_media <- function(distancia, tempo) {
  if(length(distancia) != length(tempo)) stop("Distância e tempo devem ter o mesmo comprimento")
  distancia / tempo
}

#' Calcula perda relativa a partir do ganho percentual
#'
#' Converte um aumento percentual (ganho) em perda relativa equivalente.
#'
#' @param ganho_percentual número ou vetor com o ganho percentual
#' @return perda percentual correspondente
#' @examples
#' perda_relativa(240)
#' perda_relativa(c(50, 100, 200))
#' @export
perda_relativa <- function(ganho_percentual) {
  perda <- (1 - 1 / (1 + ganho_percentual / 100)) * 100
  return(perda)
}

