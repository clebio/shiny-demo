library(shiny)

shinyUI( pageWithSidebar(
  headerPanel("Hello Shiny!"),
  sidebarPanel(
    h3("Input"),
    #helpText("Interactive input"),
    sliderInput("obs", 
                "Number of observations:", 
                min = 1,
                max = 1000, 
                value = 500)
  ),
  mainPanel(
    h3("Summary Statistics"),
    tableOutput("table"),
    h3("Visual Summary"),
    plotOutput("distPlot")
  )
))
