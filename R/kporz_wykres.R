#' Funkcja oblicza srednia z losowych zmiennych
#'
#' @param Danecsv dataframe
#' @param zm2 charackter
#' @param zm1 charackter
#' @return dataframe
#'
#' @import dplyr
#'
#' @export
#'
#' @examples





kporz_wykres <- function(Danecsv,zm1,zm2) {




  ggplot(Danecsv, aes(x = zm1,  y=zm2)) +
    geom_point()


}


