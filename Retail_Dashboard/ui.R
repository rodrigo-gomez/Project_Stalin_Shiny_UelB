#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Dashboard Oportunidad de Entrega Sector Retail"),

    # Sidebar with a slider input for number of bins
    tabsetPanel(tabPanel("Descriptivos",
      sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )),
    tabPanel("Proporciones",
             sidebarLayout(
               sidebarPanel(
                 sliderInput("bins2",
                             "Number of bins:",
                             min = 1,
                             max = 50,
                             value = 30)
               ),
               
               # Show a plot of the generated distribution
               mainPanel(
                 plotOutput("distPlot2")
               )
    )),
    tabPanel("Sentimientos",
             sidebarLayout(
               sidebarPanel(
                 sliderInput("bins3",
                             "Number of bins:",
                             min = 1,
                             max = 100,
                             value = 50)
               ),
               
               # Show a plot of the generated distribution
               mainPanel(
                 plotOutput("distPlot3")
               )
    )),
    tabPanel("Geoespacial",
             sidebarLayout(
               sidebarPanel(
                 sliderInput("bins4",
                             "Number of bins:",
                             min = 1,
                             max = 100,
                             value = 50)
               ),
               
               # Show a plot of the generated distribution
               mainPanel(
                 plotOutput("distPlot4")
               )
    ))
    
    )
))
