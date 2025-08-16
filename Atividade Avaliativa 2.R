#Autores(as): Rikelry M. Souza & Zildenny G. Ferreira

# No R Studio:
# i) CRIACAO DO DATAFRAME

dados <- data.frame(
  nota = c(7.5, 8.2, 6.8, 9.1, 7.9, 8.5, 6.3, 7.0, 8.8, 7.2, 6.9, 8.0, 7.7, 9.5, 8.3),
  genero = c("Feminino", "Masculino", "Feminino", "Masculino", "Feminino", 
             "Masculino", "Feminino", "Masculino", "Feminino", "Masculino",
             "Feminino", "Masculino", "Feminino", "Masculino", "Feminino")
)

print("Dataframe criado:")
head(dados)

# ii) TABELAS DE FREQUENCIA

# Variavel Quantitativa (nota)
intervalos <- cut(dados$nota, 
                  breaks = seq(6, 9.6, by = 1.2),
                  include.lowest = TRUE)

freq_abs_nota <- table(intervalos)
freq_rel_nota <- prop.table(freq_abs_nota)
freq_acum_nota <- cumsum(freq_abs_nota)

tabela_nota <- data.frame(
  Intervalo = names(freq_abs_nota),
  fi = as.numeric(freq_abs_nota),
  fr = round(as.numeric(freq_rel_nota), 4),
  Fac = as.numeric(freq_acum_nota)
)

print("Tabela de Frequencia - Notas:")
print(tabela_nota)

# Variavel Qualitativa (genero)
freq_abs_genero <- table(dados$genero)
freq_rel_genero <- prop.table(freq_abs_genero)
freq_acum_genero <- cumsum(freq_abs_genero)

tabela_genero <- data.frame(
  Genero = names(freq_abs_genero),
  fi = as.numeric(freq_abs_genero),
  fr = round(as.numeric(freq_rel_genero), 4),
  Fac = as.numeric(freq_acum_genero)
)

print("Tabela de Frequencia - Genero:")
print(tabela_genero)

# iii) GRAFICOS

# Histograma das notas
hist(dados$nota,
     main = "Distribuicao de Notas",
     xlab = "Notas",
     ylab = "Frequencia Absoluta",
     col = "skyblue",
     border = "darkblue",
     breaks = seq(6, 10, by = 1.2),
     xlim = c(6, 10),
     ylim = c(0, 6))

# Grefico de barras por genero
barplot(freq_abs_genero,
        main = "Distribuicao por Genero",
        xlab = "Genero",
        ylab = "Quantidade",
        col = c("pink", "lightblue"),
        names.arg = names(freq_abs_genero),
        ylim = c(0, max(freq_abs_genero) + 1))

# iv) MEDIDAS ESTATiSTICAS

# Calculos estatisticos basicos
media <- mean(dados$nota)
mediana <- median(dados$nota)
amplitude <- max(dados$nota) - min(dados$nota)
variancia <- var(dados$nota)
desvio_padrao <- sd(dados$nota)
cv <- (desvio_padrao / media) * 100  

# Moda (ponto medio do intervalo de maior frequencia)
intervalo_moda <- names(which.max(freq_abs_nota))
limites <- as.numeric(unlist(strsplit(gsub("[\\(\\)\\[\\]]", "", intervalo_moda), ",")))
moda <- mean(limites)

# Tabela de medidas
resultados <- data.frame(
  Medida = c("Media", "Mediana", "Moda (ponto medio do intervalo modal)", 
             "Amplitude", "Variancia", "Desvio Padrao", "Coeficiente de Variacao (CV)"),
  Valor = c(
    round(media, 4),
    mediana,
    round(moda, 4),
    amplitude,
    round(variancia, 4),
    round(desvio_padrao, 4),
    paste0(round(cv, 2), "%")
  )
)

print("Medidas Estatisticas para a Variavel Nota:")
print(resultados)

# 2) Salvar o scrip com extensao R.
# 3) Enviar o arquivo para Ariane@ifpi.edu.br
# 4) Prazo 18/08/25
# 5) Observacao: Quem nao atingir a nota minima fara exame final no dia 20/08/25.
