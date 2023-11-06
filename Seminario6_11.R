---
title: "Seminario Fuentes"
author:
  "Aitana Crespo Ferrero" 
  "Paula Santamaría Velasco" 
  "Beatriz Alonso Martín"
date: "`r format(Sys.time(), '%d %B, %Y')`r"
output:
  html_document:
    df_print: paged
    toc: true
    toc_float: true
---
#Importacion de datos
      
library(rjson)
library(tidyjson)
enfermedades <- fromJSON(file ="DATOS/enfermedades.json")
enfermedad_DF <- spread_all(enfermedades)
str(enfermedad_DF)



medicamentos <- fromJSON(file ="DATOS/medicamentos_comunidad.json")
medicamentos_DF <- spread_all(medicamentos)
str(medicamentos_DF)
