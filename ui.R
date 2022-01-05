library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Min første Shiny App"),
    sidebarPanel(
      selectInput("Distribution", "Please Select Distribution Type",
                  choices = c("Normal", "Exponential")),
      sliderInput("sampleSize", "Please select sample size", 
                  min = 100, max = 5000, value = 1000, step = 100),
      conditionalPanel(condition = "input.Distribution == 'Normal'",
                       textInput("mean", "Please select the mean", 10),
                       textInput("sd", "Please select the Standard Deviation", 3)),
      conditionalPanel(condition = "input.Distribution == 'Exponential'",
                       textInput("Lamda", "Please select Exponential Lamda", 1))),
    mainPanel(
      plotOutput("myPlot")
    )
  )
)