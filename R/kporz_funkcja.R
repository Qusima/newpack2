#' Funkcja oblicza srednia z losowych zmiennych
#'
#' @param Danecsv double
#' @param Kat double
#' @param Paliwo double
#' @param Stand
#' @param Tech
#' @param zaniecz
#' @param mod
#'
#' @return double
#'
#' @export
#'
#' @examples
#' hello2(a = 1, b= 500, d =23)



kporz_funkcja <- function(Danecsv,Kat,Paliwo,Stand,Techn, zaniecz ,mod)


{

  Danecsv %>%
    filter(Category==Kat,Fuel==Paliwo,`Euro Standard` == Stand,Technology == Techn) -> test

  test <- subset(test,Pollutant != "CH4")


  test %>% filter(Pollutant==zaniecz,Mode==mod) -> test


  for (i in 1:nrow(test)) {
    test$wynik <- (test$Alpha*test$`50`^2+test$Beta*test$`50`+test$Gamma+(test$Delta/test$`50`))/
      (test$Epsilon*test$`50`^2+test$Zita*test$`50`+test$Hta)*(1-test$`Reduction Factor [%]`)
  }


  return(test)

}
