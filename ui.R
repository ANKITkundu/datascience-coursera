#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
# http://shiny.rstudio.com/
# this is the userinterface 

library(shiny)
shinyUI(pageWithSidebar(
# Application title
headerPanel("Miles Per Gallon"),
# Sidebar with controls to select the variable to plot against mpg
# and to specify whether outliers should be included
sidebarPanel(
selectInput("variable","Variable:",
list("Cylinders"="cyl","Transmission"="am","Gears"="gear")),
checkboxInput("outliers","ShowOutliers",FALSE)
),
mainPanel(
h3(textOutput("caption")),
plotOutput("mpgPlot")
)
))
    
  
