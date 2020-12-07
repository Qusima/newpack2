#' Funkcja oblicza srednia z losowych zmiennych
#'
#' @param Danecsv dataframe
#' @param zm3 charackter
#' @param zm2 charackter
#' @param zm1 charackter
#' @return dataframe
#'
#' @import dplyr magrittr tidyverse stats ggplot2
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




  ggplot(Danecsv,aes(x = !!rlang::ensym(zm1), y= !!rlang::ensym(zm2),  colour = !!rlang::ensym(zm3) )) +
  geom_point(shape = 18,size=3) +
    xlim(0, 100)+
    ylim(0, 10)+
    xlab("label")+
    ylab("label")+
   ggtitle("laabel")+
  theme_bw()+
    theme(panel.background = element_rect(fill = "linen"),
          axis.text.x = element_text(size = 10),
          axis.text.y = element_text(size = 10),
          axis.title = element_text(size = 20),
          plot.title = (element_text(size = 25,hjust=0.5)),
          plot.background = element_rect(fill = "lightblue",colour = "lightblue")
          )-> p

return(p)


}






