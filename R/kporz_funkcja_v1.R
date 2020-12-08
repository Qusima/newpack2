#' Funkcja oblicza srednia z losowych zmienn
#'
#' @param Danecsv dataframe
#' @param Kat character
#' @param Paliwo character
#' @param Stand character
#' @param Techn character
#' @param zaniecz character
#' @param mod character
#'
#' @title tytul
#' @name kporz_funkcja_v1
#' @return dataframe
#'
#' @import dplyr magrittr tidyverse stats ggplot2
#'
#' @export
#'
#' @examples kporz_funkcja_v1(Danecsv,"Passenger Cars",NULL,NULL,NULL,NULL,"Urban Peak")





utils::globalVariables(c("Category","Fuel","Euro Standard","Technology","Pollutant","Mode"))

kporz_funkcja_v1 <- function(Danecsv,
                             Kat,
                             Paliwo,
                             Stand ,
                             Techn,
                             zaniecz,
                             mod)



{





  wek1 <- c(unique(Danecsv$Category))

  if (!is.null(Kat)) {

    Danecsv <- Danecsv %>%
      filter(Category %in% Kat)
  }
  else

  {
    Danecsv <- Danecsv %>%
      filter(Category %in% wek1)

  }


  #==================================================

  wek2 <- c(unique(Danecsv$Fuel))

  if (!is.null(Paliwo)) {

    Danecsv <- Danecsv %>%
      filter(Fuel %in% Paliwo)
  }
  else
  {
    Danecsv <- Danecsv %>%
      filter(Fuel %in% wek2)

  }

  #==================================================


  wek3 <- c(unique(Danecsv$`Euro Standard`))

  if (!is.null(Stand)) {

    Danecsv <- Danecsv %>%
      filter(`Euro Standard` %in% Stand)
  }
  else
  {
    Danecsv <- Danecsv %>%
      filter(`Euro Standard` %in% wek3)

  }


  #==================================================


  wek4 <- c(unique(Danecsv$Technology))

  if (!is.null(Techn)) {

    Danecsv <- Danecsv %>%
      filter(Technology %in% Techn)
  }
  else
  {
    Danecsv <- Danecsv %>%
      filter(Technology %in% wek4)

  }

  #==================================================

  wek5 <- c(unique(Danecsv$Pollutant))

  if (!is.null(zaniecz)) {

    Danecsv <- Danecsv %>%
      filter(Pollutant %in% zaniecz)
  }
  else
  {
    Danecsv <- Danecsv %>%
      filter(Pollutant %in% wek5)

  }


  #==================================================


  wek6 <- c(unique(Danecsv$Mode))

  if (!is.null(mod)) {

    Danecsv <- Danecsv %>%
      filter(Mode %in% mod)
  }
  else
  {
    Danecsv <- Danecsv %>%
      filter(Mode %in% wek6)

  }


  #==================================================




  dane <- Danecsv

  dane$Nat <- rnorm(nrow(dane), mean = 100, sd = 50)


  for (i in 1:nrow(dane)) {
    dane$wynik <- (dane$Nat *( (dane$Alpha*dane$`50`^2+dane$Beta*dane$`50`+dane$Gamma+(dane$Delta/dane$`50`))/
      (dane$Epsilon*dane$`50`^2+dane$Zita*dane$`50`+dane$Hta)*(1-dane$`Reduction Factor [%]`)))
  }


  return(dane)

}
