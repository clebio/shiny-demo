# Demostration of R's [Shiny][shi]

##Prerequisites
Shiny <= Rcpp <= R 3.0.x

##Running the code
    R -e "shiny::runGitHub('shiny-demo', 'clebio')"

## Anscombe's Quartet
    summary(anscombe)

[Anscombe's quartet][ansc] is a [pathological][patho] dataset designed to illustrate the danger of summary statistics... or of not looking at enough descriptors... or rather, it illustrates the role visualization plays in exploratory analysis.

##Quick overview of Shiny
[*Shiny has Updates!*][new_shine]

- server.R
- ui.R

- Widgets
- Standard R libraries (ggplot, etc.)
- Responsive components
- Reactive elements

##Extensions

- Database connections
- client/server deployment

[new_shine]: http://shiny.rstudio.com/tutorial/
[ansc]:https://en.wikipedia.org/wiki/Anscombe's_quartet
[shi]:http://rstudio.github.io/shiny/tutorial/
[janert]:http://shop.oreilly.com/product/9780596802363.do
[rev]:http://lab.hakim.se/reveal-js/
[patho]:https://en.wikipedia.org/wiki/Pathological_example
[inote]:http://ipython.org/notebook.html
[bokeh]:https://github.com/ContinuumIO/Bokeh
