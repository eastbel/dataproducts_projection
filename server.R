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

library(shiny)

shinyServer( function(input, output)
     
     

    {output$newHist <- renderPlot ( {
					
				     data<- c(9,10,11,12,14,14,14,15,17,17)

        selection <- switch(input$radio, 
        "1" = {	
						selection1 <- switch(input$radio2, 
            "1" = {	
						n<-input$radio2
						g<-vector()
						for(i in 1:n){
						g[i]<-100*((10+i)*.00882+.08524)}
						data1<-c(data,g)
						 axislabel<-c("05","06","07","08","09","10","11","12","13","14","15")
                                                 att<-c(5:15)},

        "2" = {	
						n<-input$radio2
						g<-vector()
						for(i in 1:n){
						g[i]<-100*((10+i)*.00882+.08524)}
						data1<-c(data,g)
            axislabel<-c("05","06","07","08","09","10","11","12","13","14","15","16")
                                                att<-c(5:16)},

        "3" = {	
						n<-input$radio2
						g<-vector()
						for(i in 1:n){
						g[i]<-100*((10+i)*.00882+.08524)}
						data1<-c(data,g)
        		axislabel<-c("05","06","07","08","09","10","11","12","13","14","15","16","17")
                                                att<-c(5:17)})

					    },
 			"2" = {	
						selection1 <- switch(input$radio2, 
             	 "1" = {	
						
			     			n<-input$radio2
						    g<-vector()
						    for(i in 1:n){
						    g[i]<-100*(.090061802*exp(.068347075*(10+i)))}
						    data1<-c(data,g)
						    axislabel<-c("05","06","07","08","09","10","11","12","13","14","15")
                                                att<-c(5:15)},

                "2" = {	
						n<-input$radio2
						g<-vector()
						for(i in 1:n){
						g[i]<-100*(.090061802*exp(.068347075*(10+i)))}
						data1<-c(data,g)
                    axislabel<-c("05","06","07","08","09","10","11","12","13","14","15","16")
                                                att<-c(5:16)},

                "3" = {	
						n<-input$radio2
						g<-vector()
						for(i in 1:n){
						g[i]<-100*(.090061802*exp(.068347075*(10+i)))}
						data1<-c(data,g)
                	axislabel<-c("05","06","07","08","09","10","11","12","13","14","15","16","17")
                                                att<-c(5:17)})

					    },

			"3" = {	
						selection1 <- switch(input$radio2, 
           	 "1" = {	
						
						n<-input$radio2
						g<-vector()
						for(i in 1:n){
						g[i]<-100*(-.00021265*(10+i)*(10+i)+.01116268*(10+i)+.0805651)}
						data1<-c(data,g)
						 axislabel<-c("05","06","07","08","09","10","11","12","13","14","15")
                                                  att<-c(5:15)},

           	 "2" = {	
						n<-input$radio2
						g<-vector()
						for(i in 1:n){
						g[i]<-100*(-.00021265*(10+i)*(10+i)+.01116268*(10+i)+.0805651)}
						data1<-c(data,g)
              axislabel<-c("05","06","07","08","09","10","11","12","13","14","15","16")
                                                att<-c(5:16)},

           	 "3" = {	
						n<-input$radio2
						g<-vector()
						for(i in 1:n){
						g[i]<-100*(-.00021265*(10+i)*(10+i)+.01116268*(10+i)+.0805651)}
						data1<-c(data,g)
            		axislabel<-c("05","06","07","08","09","10","11","12","13","14","15","16","17")
                                                att<-c(5:17)})
                                              
                  })
                                       					
             plot(axislabel,data1,xlab='Years', col='blue',main='Projections',type="l",ylab="pct of total",xaxt="n")
			       text(axislabel,data1,data1)
			   
             axis(1,att,axislabel)})})

