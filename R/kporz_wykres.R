#' Funkcja oblicza srednia z losowych zmiennych
#'
#' @param data dataframe
#' @param zm5 charackter
#' @param zm4 charackter
#' @param zm3 charackter
#' @param zm2 charackter
#' @param zm1 charackter
#'
#' @return dataframe
#'
#' @title kporz_wykres
#' @name kporz_wykres
#'
#' @import dplyr magrittr tidyverse stats ggplot2 rlang
#'
#' @examples \donttest{ kporz_wykres(b4,"Gamma","wynik","Hta","tytuł wykresu","wykres1") }
#'
#' @export







kporz_wykres <- function(data = Danecsv2,
                         zm1 = "Gamma",
                         zm2 = "wynik",
                         zm3 = "Hta",
                         zm4 = "tytul wykresu",
                         zm5 = "wykres1")
                         {





zm1  <- ensym(zm1)
zm2 <-  ensym(zm2)
zm3  <- ensym(zm3)



switch(zm5,
       wykres1={

  ggplot(data,aes(x = !!rlang::ensym(zm1), y= !!rlang::ensym(zm2),  colour = !!rlang::ensym(zm3) )) +
  geom_point(shape = 18,size=3) +
    xlim(0, 100)+
    ylim(0, 10)+
    xlab(zm1)+
    ylab(zm2)+
   ggtitle(zm4)+
  theme_bw()+
    theme(panel.background = element_rect(fill = "linen"),
          axis.text.x = element_text(size = 10),
          axis.text.y = element_text(size = 10),
          axis.title = element_text(size = 20),
          plot.title = (element_text(size = 25,hjust=0.5)),
          plot.background = element_rect(fill = "lightblue",colour = "lightblue")
          )-> p
         return(p)
       },

  wykres2=
    {
      ggplot(data,aes(x = !!rlang::ensym(zm1), y= !!rlang::ensym(zm2),colour = !!rlang::ensym(zm3) )) +
        geom_bar(stat='identity',width=1)+
        theme_minimal()+
        xlim(0, 200)+
        ylim(0, 1000)+
        xlab(zm1)+
        ylab(zm2)+
        ggtitle(zm4)+
        theme(panel.background = element_rect(fill = "linen"),
              axis.text.x = element_text(size = 10),
              axis.text.y = element_text(size = 10),
              axis.title = element_text(size = 20),
              plot.title = (element_text(size = 25,hjust=0.5)),
              plot.background = element_rect(fill = "lightgrey",colour = "lightgrey")) -> p

      return(p)
    },


  wykres3=
    {

      ggplot(data,aes(x = !!rlang::ensym(zm1), y= !!rlang::ensym(zm2) )) +
        geom_hex()+
        theme_minimal()+
        xlim(0, 150)+
        ylim(0, 800)+
        xlab(zm1)+
        ylab("Wystapienia")+
        ggtitle(zm4)+
        theme(panel.background = element_rect(fill = "linen"),
              axis.text.x = element_text(size = 10),
              axis.text.y = element_text(size = 10),
              axis.title = element_text(size = 20),
              plot.title = (element_text(size = 25,hjust=0.5)),
              plot.background = element_rect(fill = "lightgrey",colour = "lightgrey")) -> p
      return(p)
    },


  wykres4=
    {
      ggplot(data,aes(x = !!rlang::ensym(zm1) )) +
        geom_histogram(color="blue",fill="lightblue")+
        theme_minimal()+
        xlim(0, 150)+
        ylim(0, 30)+
        xlab(zm1)+
        ylab("Wystapienia")+
        ggtitle(zm4)+
        theme(panel.background = element_rect(fill = "linen"),
              axis.text.x = element_text(size = 10),
              axis.text.y = element_text(size = 10),
              axis.title = element_text(size = 20),
              plot.title = (element_text(size = 25,hjust=0.5)),
              plot.background = element_rect(fill = "lightgrey",colour = "lightgrey")) -> p
      return(p)
    }

)



}






