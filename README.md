# BCEAweb

> A Shiny interface to the R package BCEA.

## Overview

`BCEAweb` is a companion to the `R` package [BCEA](https://github.com/giabaio/BCEA), which can be used to post-process the output of cost-effectiveness model. `BCEAweb` launches a [`Shiny`](https://shiny.posit.co/) webapp, in which the user can upload their own inputs (e.g. simulations from the distribution of the population average benefits and cost) and then analyse and visualise the output, to produce cost-effectiveness planes, acceptability curves as well as more advanced analysis such as the Expected Value of Partial Information.

## Installation
The package can be installed from `r-universe.dev`, using the following command

```r
install.packages(
  'BCEAweb', 
  repos = c('https://giabaio.r-universe.dev', 'https://cloud.r-project.org')
)
```

Alternatively, you can intall the development version using `remotes`, with the following command.
```r
install.packages("remotes")
remotes::install_github("giabaio/BCEAweb")
```

**NB**: On Windows machines, you need to install a few dependencies, including [Rtools](https://cran.r-project.org/bin/windows/Rtools/) first, e.g. by running

```r
pkgs <- c("MASS", "Rtools", "remotes")
repos <- "https://cran.rstudio.com"
install.packages(pkgs, repos = repos, dependencies = "Depends")
```

before installing the package using `remotes`.

## Usage

Once `BCEAweb` is available, then you can use it to post-process your BCEA model, by launching it using the command
```
library(BCEAweb)
# Launch the webapp
BCEAweb()
```

## License
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

## Contributing
Please submit contributions through `Pull Requests`, following the [contributing guidelines](https://github.com/giabaio/BCEAweb/CONTRIBUTING.md).
To report issues and/or seek support, please file a new ticket in the
[issue](https://github.com/giabaio/BCEAweb/issues) tracker.

Please note that this project is released with a [Contributor Code of Conduct](https://github.com/giabaio/BCEAweb/CONDUCT.md). By participating in this project you agree to abide by its terms.
