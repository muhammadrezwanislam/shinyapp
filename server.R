library(shiny)
library(ggplot2)
library(plotly)

server <- function(input, output) {
  
  data_one <- reactive({data.frame(value=rnorm(input$norm))})
  data_two <- reactive({data.frame(value=rexp(input$exp,input$rate))})
  data_three <- reactive({data.frame(value=rbinom(input$binom, input$trials,input$probability))})
  data_four <- reactive({data.frame(value=runif(input$unif))})
  
  output$distPlot1 <- renderPlotly({g<-ggplot(data=data_one(), aes(x=value)) + 
    geom_histogram(aes(y=..density..,fill = ..count..))+
    geom_density(alpha=.8)
  ggplotly(g)})
  output$distPlot2 <- renderPlotly({e<-ggplot(data=data_two(), aes(x=value)) + 
    geom_histogram(aes(y=..density..,fill = ..count..))+
    geom_density(alpha=.8)
  ggplotly(e)})
  output$distPlot4 <- renderPlotly({b<-ggplot(data=data_three(), aes(x=value)) + 
    geom_histogram(aes(y=..density..,fill = ..count..))+
    geom_density(alpha=.8)
  ggplotly(b)})
  output$distPlot3 <- renderPlotly({u<-ggplot(data=data_four(), aes(x=value)) + 
    geom_histogram(aes(y=..density..,fill = ..count..))+
    geom_density(alpha=.8)
  ggplotly(u)})
}