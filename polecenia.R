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
check() # problem

library(roxygen2)

document()  # problem

use_mit_license("Qusima")

document() # problem

load_all()

hello2()

install()

use_package("base")
use_package("stats")
use_package("dplyr")
