% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kporz_wykres.R
\name{kporz_wykres}
\alias{kporz_wykres}
\title{kporz_wykres}
\usage{
kporz_wykres(
  data = Danecsv2,
  zm1 = "Gamma",
  zm2 = "wynik",
  zm3 = "Hta",
  zm4 = "tytul wykresu",
  zm5 = "wykres1"
)
}
\arguments{
\item{data}{dataframe}

\item{zm1}{charackter zmienna x}

\item{zm2}{charackter zmienna y}

\item{zm3}{charackter zmienna Fill/colour}

\item{zm4}{charackter tytul wykresu}

\item{zm5}{charackter rodzaj wykresu jeden z czterech}
}
\value{
dataframe
}
\description{
Funkcja oblicza srednia z losowych zmiennych
}
\examples{
\donttest{ kporz_wykres(b4,"Gamma","wynik","Hta","tytuĹ‚ wykresu","wykres1") }

}
