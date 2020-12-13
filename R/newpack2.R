#'  Pakiet oceny emisji (emission evaluation)
#'
#' Pakiet sluzy do obliczania emisji zanieczyszczen generowanych przez pojazdy
#' z silnikami spalinowymi i wyswietlania wyników na wykresach.
#'
#' Pakiet zawiera dwie funkcje: kporz_funkcja_v1(),kporz_funkcjav1()
#'
#' kporz_funkcja_v1() filtruje dane wedlug podanych argumentow i oblicza emisje do nich
#'
#' kporz_wykres() tworzy jeden z czterech dostepnych wykresow
#'
#' Dane powinny skladac sie przynajmniej z kolumn: Category,Fuel,Euro Standard, Techonolgy, Pollutant,Mode
#' aby program dzialal poprawnie
#'
#' @docType package
#'
#' @name newpack2
#'
#'
#'
#' @import stats
#' @import dplyr
#' @import tidyverse
#' @import rlang
#' @import magrittr
#' @import ggplot2
#'
#'
#'
#'
#'

NULL

utils::globalVariables(c("Category","Fuel","Euro Standard","Technology","Pollutant","Mode","Danecsv"))
