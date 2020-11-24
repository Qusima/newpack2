#' Funkcja oblicza srednia z losowych zmiennych
#'
#' @param Danecsv dataframe
#' @param Kat character
#' @param Paliwo character
#' @param Stand character
#' @param Techn character
#' @param zaniecz character
#' @param mod character
#'
#' @return dataframe
#'
#' @import dplyr
#'
#' @export
#'
#' @examples





kporz_funkcja_v1 <- function(Danecsv,Kat,Paliwo,Stand,Techn, zaniecz ,mod)



{

  Danecsv$Segment <- as.character(Danecsv$Segment)

  filter(Danecsv,Category==Kat,Fuel==Paliwo,`Euro Standard` == Stand,Technology == Techn) -> test

  test <- subset(test,Pollutant != "CH4")


  filter(test,Pollutant==zaniecz,Mode==mod) -> test


  for (i in 1:nrow(test)) {
    test$wynik <- (test$Alpha*test$`50`^2+test$Beta*test$`50`+test$Gamma+(test$Delta/test$`50`))/
      (test$Epsilon*test$`50`^2+test$Zita*test$`50`+test$Hta)*(1-test$`Reduction Factor [%]`)
  }


  return(test)

}
