
#' Simula comportamento de forrageamento
#'
#' @param n Numero de abelhas
#' @param taxa_saida Taxa de saida de abelhas
#'
#' @return Data frame com tempos simulados
#' @export
simular_forrageamento <- function(n = 10, taxa_saida = 0.3) {
  tempo <- rexp(n, rate = taxa_saida)
  data.frame(abelha = 1:n, tempo = tempo)
}

