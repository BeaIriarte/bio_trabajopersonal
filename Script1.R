library(MLDataR)

tir <- MLDataR::thyroid_disease

write.csv(tir, file = "dataset_tiroides.csv")

sessionInfo()

# order: es como un sort de un vector

head(tir)

sort(tir$patient_age)

tir2 <- tir[order(tir$patient_age),]  ## dataset ordenado

## para no tener el NA. Se seleccionan los que tienen completos los datos

tir_completo <- tir[complete.cases(tir),]

# aggregate: agrupar por grupos y hacer un calculo estadistico

# aggregate(valores a calcular (edad), grupos (tir o no), estadístico (media))

aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass), mean )


aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass, tir_completo$patient_gender), mean )

edad_tir <- aggregate(tir_completo$patient_age, list(tir_completo$ThryroidClass), mean)
names(edad_tir) <- c("Tiroides", "Media") ## cambiar los nombres de las columnas.

names(edad_tir)

edad_tir
