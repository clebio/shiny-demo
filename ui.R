library(shiny)

shinyUI( pageWithSidebar(
  headerPanel("Anscombe's Quartet"),
  sidebarPanel(
    h3("Input"),
    #helpText("Interactive input"),
    sliderInput("csize", 
                "Size of plots:", 
                min = 200,
                max = 800, 
                value = 400,
                step=200)
    ),
  mainPanel(
    h3("Summary Tables and Charts"),
    uiOutput("plots") # This is the dynamic UI for the plots
    )
))
