Asistencia <- c(rep("Si", 9), rep("No", 9))
Genero <- c(rep("Mujer", 8), "Hombre", rep("Hombre", 7), rep("Mujer", 2))

data <- data.frame( Genero, Asistencia)
tabla <- xtabs(~., data)

print(tabla)

alfa <- 0.05
prueba <- fisher.test(tabla , 1 - alfa)

print(prueba)