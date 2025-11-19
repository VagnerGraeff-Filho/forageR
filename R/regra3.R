# ============================
# Script Modelo: Criar função regra3 e enviar para GitHub
# ============================


#' Calcula x usando a regra de 3 simples
#'
#' @param a valor a
#' @param b valor b
#' @param y valor y (não pode ser zero)
#' @return x calculado
#' @export
regra3 <- function(a, b, y) {
  if (y == 0) stop("y não pode ser zero.")
  x <- (y * b) / a
  return(x)
}







# 0️⃣ Configurar usuário Git (uma vez só, se ainda não configurado)
system('git config --global user.name "VagnerGraeff-Filho"')
system('git config --global user.email "vagner.filho966@gmail.com"')

# 1️⃣ Definir função regra3
regra3 <- function(a, b, y) {
  if (y == 0) stop("y não pode ser zero.")
  x <- (y * b) / a
  return(x)
}

# Teste rápido da função
regra3(a = 300, b = 10, y = 125)  # deve retornar ~4.166667

# 2️⃣ Salvar função em um script dentro da pasta R/ do pacote
dir.create("R", showWarnings = FALSE)  # cria a pasta R se não existir
arquivo <- file.path("R", "regra3_fun.R")
dump("regra3", file = arquivo)

# 3️⃣ Git: adicionar arquivos modificados
system("git add .")

# 4️⃣ Git: criar commit (somente se houver mudanças)
status <- system("git status --porcelain", intern = TRUE)
if(length(status) > 0) {
  mensagem_commit <- "Adiciona função regra3 ao pacote forageR"
  system(paste0('git commit -m "', mensagem_commit, '"'))

  # 5️⃣ Git: enviar alterações para o GitHub
  system("git push origin master")  # substitua master se sua branch principal for outra
  cat("Função adicionada, commit criado e alterações enviadas para GitHub!\n")
} else {
  cat("Nenhuma alteração detectada. Nada para commitar.\n")
}

# 6️⃣ Conferir status e últimos commits
system("git status")
system("git log --oneline -n 5")
