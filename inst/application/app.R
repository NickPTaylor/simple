#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Define UI for application that draws a histogram
ui <- shiny::fluidPage(
  shiny::textInput("input", "Enter a string", value = "Hello"),
  shiny::textOutput("output")
)

# Define server logic required to draw a histogram
server <- function(input, output) {
   output$output <- shiny::renderText({
       reverse_string(input$input)
   })
}

# Run the application
shiny::shinyApp(ui = ui, server = server)
