library (devtools)
library(tidyverse)


use_git()


use_r("hello2")

devtools::load_all()

hello2(a = 1, b= 500, d =23)

exists("hello2",where = globalenv(), inherits = FALSE)
rm(hello2)
exists("hello2",where = globalenv(), inherits = FALSE)

load_all()
check()

library(roxygen2)
