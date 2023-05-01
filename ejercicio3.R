# En su afán de comprender mejor a sus eternos enemigos, los vampiros, Van Helsing ha decidido estudiar
# si vampiresas y vampiros tienen preferencias similares en cuanto al tipo sanguíneo de sus víctimas. ¿Qué
# puede concluir a partir las preferencias alimentarias de estos seres de acuerdo a sus registros, mostrados
# en la siguiente tabla?

# ---- HIPOTESIS ----
cat("H0: Vampiresas y Vampiros tienen preferencias similares en cuanto al tipo sanguineo de sus victimas. \n")
cat("HA: Vampiresas y Vampiros NO tienen preferencias similares en cuanto al tipo sanguineo de sus victimas. \n")

alfa <- 0.05

# TABLA DE CONTINGENCIA

vampiro <- c(15, 12, 8, 6)
vampiresa <- c(9, 14, 5, 7)

tabla <- as.table(rbind(vampiro, vampiresa))
dimnames(tabla) <- list(genero = c("Vampiro", "Vampiresa"), 
                        sangre = c("A", "B", "AB", "O"))
print(tabla)

prueba <- chisq.test(tabla)
print(prueba)
