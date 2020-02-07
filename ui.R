library(shiny)
library(ggplot2)
library(plotly)


ui <- fluidPage(
  
  
  
  # Application title
  titlePanel("Probability Distribution"),
  
  tabsetPanel(
    tabPanel("Normal", fluid=TRUE,
             sidebarLayout(
               
               # Sidebar with a slider input
               sidebarPanel(
                 sliderInput("norm",
                             "Number of observations:",
                             min = 0,
                             max = 1000,
                             value = 500)
               ),
               
               # Show a plot of the generated distribution
               mainPanel(
                 plotlyOutput("distPlot1")
               )
             )
    ),
    tabPanel("Exponential", fluid=TRUE,
             sidebarLayout(
               
               # Sidebar with a slider input
               sidebarPanel(
                 sliderInput("exp",
                             "Number of observations:",
                             min = 0,
                             max = 1000,
                             value = 500),
                 sliderInput("rate",
                             "Rate:",
                             min = 0,
                             max = 10,
                             value = 1)
                 
               ),
               
               # Show a plot of the generated distribution
               mainPanel(
                 plotlyOutput("distPlot2")
               )
             )
    ),
    tabPanel("Binomial", fluid=TRUE,
             sidebarLayout(
               
               # Sidebar with a slider input
               sidebarPanel(
                 sliderInput("binom",
                             "Number of observations:",
                             min = 0,
                             max = 1000,
                             value = 500),
                 sliderInput("trials",
                             "Number of Trails:",
                             min = 0,
                             max = 100,
                             value = 1),
                 sliderInput("probability",
                             "Probability of Sucess on each Trial:",
                             min = 0,
                             max = 1,
                             value = 0.5)
                 
               ),
               
               # Show a plot of the generated distribution
               mainPanel(
                 plotlyOutput("distPlot4")
               )
             )
    ),
    tabPanel("Uniform", fluid=TRUE,
             sidebarLayout(
               
               # Sidebar with a slider input
               sidebarPanel(
                 sliderInput("unif",
                             "Number of observations:",
                             min = 0,
                             max = 1000,
                             value = 500)
               ),
               
               # Show a plot of the generated distribution
               mainPanel(
                 plotlyOutput("distPlot3")
               )
             )
    )
    
    
    
  )
)
