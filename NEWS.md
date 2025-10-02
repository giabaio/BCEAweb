# BCEAweb 0.0.0.9000

*September 2025*

- Add function `make.report`, which previously was in the main `BCEA` package. 

- Fix code to ensure that all the plots are actually active. There was a mistake in the `server.R` file that would prevent the CEplane plot to show.
- Update the `BCEAweb` launcher so that it is possible to specify that the app must be launched inside Rstudio and not in the main browser.
- Refactor code to explicitly call all the `BCEA` functions as `BCEA::function`

*July 2025*

- Clean up the package from unnecessary files
- Updates favicon
