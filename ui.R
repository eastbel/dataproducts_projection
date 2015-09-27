######################################################################
#Projection Data Products Project
#Easton Bell
#Friday, September 25, 2015


#How to use the application:
#The application is a simple prediction application.
#Built in to the application is performance information (pct to total) from 2005 to 2014; Also built in to the application are prediction models- linear, polynomial and exponential.
#The application allows the user to select the prediction model desired and the number of prediction periods (in yrs) desired, a min of 1 and max of 3. Each selection updates the graph on the right showing "pct to total" predictions
#The reactive output displayed in the graph; the inputs are the radio buttons.

#To use the application:
# 1) Type the url into your favorite browser (application defaults to "linear" and "1 prediction period"
# 2) Select the prediction methodology
# 3) Select desired prediction period
# 4) Observe the output
# Application URL: https://eeffbb.shinyapps.io/projection
#Documentation URL: https://eeffbb.shinyapps.io/READMElibrary(shiny)
##########################################################################
shinyUI(fluidPage(
  titlePanel("Projection"),
  
  sidebarLayout(
    sidebarPanel(
        radioButtons("radio", label = h3("Projection Method"), 
        choices = list("Linear" = 1,"Exponential" = 2, "Polynomial" = 3),selected = 1),  

       radioButtons("radio2", label = h3("Projection periods"), 
        choices = list("1 period" = 1,"2 periods" = 2, "3 periods" = 3),selected = 1)),  

    mainPanel(plotOutput("newHist")))))


