#' Funkcja oblicza srednia z losowych zmiennych
#'
#' @param Danecsv dataframe
#' @param zm3 charackter
#' @param zm2 charackter
#' @param zm1 charackter
#' @return dataframe
#'
#' @import dplyr
#'
#' @export
#'
#' @examples





kporz_wykres <- function(Danecsv,
                         zm1,
                         zm2,
                         zm3)
                         {



zm1  <- ensym(zm1)
zm2 <-  ensym(zm2)
zm3  <- ensym(zm3)

Danecsv %>%
  ggplot(.,aes(x = !!rlang::ensym(zm1), y= !!rlang::ensym(zm2),fill = !!rlang::ensym(zm3) )) +
  geom_point()+
  theme_bw() -> p

return(p)


}






