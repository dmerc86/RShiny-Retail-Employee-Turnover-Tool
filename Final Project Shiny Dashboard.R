library(ggplot2)
library(shiny)

data <- as.data.frame(datasim) 

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "xaxis", 
        label = "X Axis Variable", 
        choices = colnames(data1)
      ),
      selectInput(
        inputId = "yaxis", 
        label = "Y Axis Variable", 
        choices = colnames(data1)
      )
    ),
    mainPanel(
      plotOutput(outputId = "scatterplot"))
  )
) 

server <- function(input, output) {
  output$scatterplot <- renderPlot({
    req(input$xaxis)
    req(input$yaxis)
    ggplot(data, aes(x = input$xaxis, y = input$yaxis))
  })} 


shinyApp(ui = ui, server = server)
