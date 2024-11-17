# BCEAweb
## A Shiny frontend to run [BCEA](https://github.com/giabaio/BCEA)

`BCEAweb` is a companion to the `R` package [BCEA](https://github.com/giabaio/BCEA), which can be used to post-process the output of cost-effectiveness model. `BCEAweb` launches a [`Shiny`](https://shiny.posit.co/) webapp, in which the user can upload their own inputs (e.g. simulations from the distribution of the population average benefits and cost) and then analyse and visualise the output, to produce cost-effectiveness planes, acceptability curves as well as more advanced analysis such as the Expected Value of Partial Information.

## Installation
`BCEAweb` can be installed from this GitHub repository using the package `remotes`:
```R
remotes::install_github("giabaio/BCEAweb")
```
Alternatively, it is possible to install `BCEAweb` from source with the following command.
```
install.packages(
   'BCEAweb', 
   repos = c('https://giabaio.r-universe.dev', 'https://cloud.r-project.org')
)
```
(NB: You can replace the CRAN mirror to any other, e.g. `https://www.stats.bris.ac.uk/R/` --- see [here](https://cran.r-project.org/)).

## Usage
Once `BCEAweb` is available, then you can use it to post-process your `BCEA` model,  by launching it using the command
```R
library(BCEAweb)
# Launch the webapp
BCEAweb()
```

