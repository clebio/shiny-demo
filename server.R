library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  output$table <- renderTable({
    anscombe
  })
  
  output$distPlot <- renderPlot({
    dist <- rnorm(input$obs)
    hist(dist)
  })
                                        # http://stackoverflow.com/questions/15875786/dynamically-add-plots-to-web-page-using-shiny

  max_plots <- 4
  output$plots <- renderUI({
    for (i in 1:max_plots) {
    local({
      my_i <- i
      plotname <- paste("plot", my_i, sep="")
      tablename <- paste("table", my_i, sep="")

      xi <- paste("x", my_i, sep="")
      yi <- paste("y", my_i, sep="")
      df = data.frame(anscombe[xi], anscombe[yi])
      names(df) <- c('x', 'y')

      output[[tablename]] <- renderPrint({ summary(df) })
      output[[plotname]] <- renderPlot({
        print(ggplot(df, aes(x=x, y=y)) + geom_point() + xlim(0, max(df['x'])) + ylim(0, max(df['y'])))
      })
    })
  }
    plot_output <- lapply(1:max_plots, function(i) {
      tablename <- paste("table", i, sep="")
      plotname <- paste("plot", i, sep="")
      list(verbatimTextOutput(tablename), plotOutput(plotname, height = input$csize, width = input$csize))
    })
    do.call(tagList, plot_output)
  })
  
})
