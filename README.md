# Demostration of R's [Shiny][shi]

Shiny <= Rcpp <= R 3.0.x

    R -e "shiny::runGitHub('shiny-demo', 'clebio')"

## Anscombe's Quartet
    summary(anscombe)

[Anscombe's quartet][ansc] is a [pathological][patho] dataset designed to illustrate the danger of summary statistics... or of not looking at enough descriptors... or rather, it illustrates the role visualization plays in exploratory analysis.

## Visualizing Data

## Iteration. Fast iteration cycle

  - Traditional statistics (and small data sets)
  - Visualizing data (as well as large data sets and powerful computers)

Modern data analysis. [Data Analysis With Open Source Tools][janert]

## A Modern Quartet?
An equivalent to Anscombe's quartet in higher dimensions. Visualization only gets you so far, and thus a battery of statistical tests is still quite necessary.

  - Sparse data in high dimensions; the curse of dimensionality
  - PCA and the mistake of fitting in too few dimensions

### A Python Equivalent?
[IPython Notebooks][inote]
Continuum Analytics' [Bokeh][bokeh] (with [Anscombe example](http://bokeh.pydata.org/plot_gallery/anscombe.html), no less!)

### Colophon
Presentation slides use [Reveal.js][rev]

[ansc]:https://en.wikipedia.org/wiki/Anscombe's_quartet
[shi]:http://rstudio.github.io/shiny/tutorial/
[janert]:http://shop.oreilly.com/product/9780596802363.do
[rev]:http://lab.hakim.se/reveal-js/
[patho]:https://en.wikipedia.org/wiki/Pathological_example
[inote]:http://ipython.org/notebook.html
[bokeh]:https://github.com/ContinuumIO/Bokeh
