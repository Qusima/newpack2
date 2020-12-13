#' Funkcja oblicza srednia z losowych zmienn
#'
#' @param data dataframe - Dane zawierajace kolumny z przynajmniej ponizszymi kolumnami
#' @param Kat character - kategoria auta
#' @param Paliwo character - rodzaj paliwa
#' @param Stand character - euro standard
#' @param Techn character - rodzaj technologi
#' @param zaniecz character - rodzaj zanieczyszczenia
#' @param mod character - tryb auta
#'
#' @title kporz_funkcja_v1
#' @name kporz_funkcja_v1
#' @return dataframe
#'
#' @examples \donttest{kporz_funkcja_v1(data = Danecsv,Kat = "Passenger Cars",Paliwo = NULL,
#' Stand = NULL,Techn = NULL,zaniecz = NULL,mod = "Urban Peak") }
#' @import dplyr magrittr tidyverse stats ggplot2 rlang
#'
#'
#' @export


utils::globalVariables(c("Category","Fuel","Euro Standard","Technology","Pollutant","Mode"))



kporz_funkcja_v1 <- function(data ,
                             Kat = "Passenger Cars",
                             Paliwo = NULL,
                             Stand  = NULL,
                             Techn = NULL,
                             zaniecz = NULL,
                             mod = NULL) {




  wek1 <- c(unique(data$Category))

  if (!is.null(Kat)) {

    data <- data %>%
      dplyr::filter(data$Category %in% Kat)
  }
  else
  {
    data <- data %>%
      dplyr::filter(data$Category %in% wek1)

  }

  wek2 <- c(unique(data$Fuel))

  if (!is.null(Paliwo)) {

    data <- data %>%
      dplyr::filter(data$Fuel %in% Paliwo)
  }
  else
  {
    data <- data %>%
      dplyr::filter(data$Fuel %in% wek2)

  }

  wek3 <- c(unique(data$`Euro Standard`))

  if (!is.null(Stand)) {

    data <- data %>%
      dplyr::filter(data$`Euro Standard` %in% Stand)
  }
  else
  {
    data <- data %>%
      dplyr::filter(data$`Euro Standard` %in% wek3)

  }

  wek4 <- c(unique(data$Technology))

  if (!is.null(Techn)) {

    data <- data %>%
      dplyr::filter(data$Technology %in% Techn)
  }
  else
  {
    data <- data %>%
      dplyr::filter(data$Technology %in% wek4)

  }

  wek5 <- c(unique(data$Pollutant))

  if (!is.null(zaniecz)) {

    data <- data %>%
      dplyr::filter(data$Pollutant %in% zaniecz)
  }
  else
  {
    data <- data %>%
      dplyr::filter(data$Pollutant %in% wek5)

  }

  wek6 <- c(unique(data$Mode))

  if (!is.null(mod)) {

    data <- data %>%
      dplyr::filter(data$Mode %in% mod)
  }
  else
  {
    data <- data %>%
      dplyr::filter(data$Mode %in% wek6) }




  dane <- data

  liczba <- as.numeric(nrow(dane))



  dane$Nat <- rnorm(liczba, mean = 100, sd = 50)


    dane$wynik <- (dane$Nat *( (dane$Alpha*dane$`50`^2+dane$Beta*dane$`50`+dane$Gamma+(dane$Delta/dane$`50`))/
                                 (dane$Epsilon*dane$`50`^2+dane$Zita*dane$`50`+dane$Hta)*(1-dane$`Reduction Factor [%]`)))


  return(dane)
}
