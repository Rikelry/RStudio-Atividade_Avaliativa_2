# Atividade de Estatística Descritiva no R Studio

## Objetivo
Praticar conceitos básicos de estatística descritiva, construindo e analisando uma base de dados, incluindo tabelas de frequência, gráficos, medidas de tendência central e de dispersão.

---

## Instruções

### 1. Preparação no R Studio
- **Criar um dataset** contendo:
  - Uma variável **quantitativa** (ex.: idades, alturas, salários, notas).
  - Uma variável **qualitativa** (ex.: gênero, curso, cidade, cor favorita).

### 2. Tabelas de Frequência
- Para a variável **quantitativa**, construir uma tabela de distribuição de frequência com:
  - Frequência Absoluta (`fi`).
  - Frequência Relativa (`fr`).
  - Frequência Acumulada (`fa`).
- Para a variável **qualitativa**, construir uma tabela de contingência.

### 3. Gráficos
- **Histograma** para a variável quantitativa.
- **Gráfico à escolha** (barras, pizza, etc.) para a variável qualitativa.

### 4. Cálculos Estatísticos (variável quantitativa)
- Medidas de tendência central:
  - Média.
  - Mediana.
  - Moda.
- Medidas de dispersão:
  - Amplitude.
  - Variância.
  - Desvio padrão.
  - Coeficiente de variação (`CV`).

---

## Entrega
1. Salvar o script com extensão `.R`.
2. Enviar o arquivo para: `aniano.vicira@ifjd.edu.br`.
3. **Prazo**: 18/08/2025.

---

## Observação
- Alunos que não atingirem a nota mínima farão exame final no dia **20/08/2025**.

---
media <- mean(dados$idade)
mediana <- median(dados$idade)
desvio_pad <- sd(dados$idade)
