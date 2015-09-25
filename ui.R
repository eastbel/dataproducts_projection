library(shiny)

shinyUI(fluidPage(
  titlePanel("Projection"),
  
  sidebarLayout(
    sidebarPanel(
        radioButtons("radio", label = h3("Projection Method"), 
        choices = list("Linear" = 1,"Exponential" = 2, "Polynomial" = 3),selected = 1),  

       radioButtons("radio2", label = h3("Projection periods"), 
        choices = list("1 period" = 1,"2 periods" = 2, "3 periods" = 3),selected = 1)),  

    mainPanel(plotOutput("newHist")))))


