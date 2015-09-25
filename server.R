###############################

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
                                                att<-c(5:17)
                                               })
                                           })
					
                                       plot(axislabel,data1,xlab='Years', col='blue',main='Projections',type="l",ylab="pct of total",xaxt="n")
				       
                                       axis(1,att,axislabel)})})


