# ============================
# Script Modelo: Criar função e enviar para GitHub
# ============================

# 1️⃣ Definir função de exemplo
velocidade_media <- function(distancia, tempo) {
  if(length(distancia) != length(tempo)) {
    stop("Distância e tempo devem ter o mesmo comprimento")
  }
  velocidade <- distancia / tempo
  return(velocidade)
}

# 2️⃣ Salvar função em um script dentro da pasta R/ do pacote
dir.create("R", showWarnings = FALSE)  # cria a pasta R se não existir
arquivo <- file.path("R", "exemplo_fun.R")
dump("velocidade_media", file = arquivo)

# 3️⃣ Git: adicionar arquivos modificados
system("git add .")

# 4️⃣ Git: criar commit
mensagem_commit <- "Adiciona função velocidade_media ao pacote forageR"
system(paste0('git commit -m "', mensagem_commit, '"'))

# 5️⃣ Git: enviar alterações para o GitHub
system("git push origin main")  # substitua main se a branch principal tiver outro nome

# 6️⃣ Mensagem final
cat("Função adicionada, commit criado e alterações enviadas para GitHub!\n")

system('git config --global user.name "VagnerGraeff-Filho"')
system('git config --global user.email "vagner.filho966@gmail.com"')

# Criar commit
system('git commit -m "Adiciona função velocidade_media e script modelo.R ao pacote forageR"')

# Enviar alterações para o GitHub
system("git push origin master")  # sua branch principal é 'master'


# Confirma se não há mais alterações pendentes
system("git status")

# Lista os últimos commits
system("git log --oneline -n 5")

