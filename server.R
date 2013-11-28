library(shiny)


shinyServer(function(input, output) {
  output$table <- renderTable({
    anscombe
  })
  
  output$distPlot <- renderPlot({
    dist <- rnorm(input$obs)
    hist(dist)
  })
})
