library(shiny)
library(leaflet)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Some Points of Interest"),
  
  h3("Please select the city that you are interested in seeing point of interest for."),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
            
            radioButtons("radio", label = h3("Cities"),
                     choices = list("Baltimore" = 1, "Boston" = 2, "New York" = 3), 
                     selected = 1)
        ),
    
    # Show a plot of the generated distribution
    mainPanel(
       
            leafletOutput("distPlot")
            
    )
  )
))
