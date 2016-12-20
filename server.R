library(shiny)
library(leaflet)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderLeaflet({
    
        #Generate some sample longitude and latitude data. 
        
          #set.seed(2016-12-10)
          
          if (input$radio == 1) {
                  
                df <- data.frame(lat = runif(15, min = 39.2, max = 39.3),
                           lng = runif(15, min = -76.6, max = -76.5))
          
          } else if (input$radio == 2) {
                  
                df <- data.frame(lat = runif(15, min = 42.3, max = 42.4),
                           lng = runif(15, min = -71.1, max = -71.0))
          
          } else {
                df <- data.frame(lat = runif(15, min = 40.7, max = 40.8),
                           lng = runif(15, min = -74.0, max = -73.9))
          }
          
        #Generate the map.
          
        df %>% 
           leaflet() %>%
           addTiles() %>%
           addMarkers()
  })
  
})
