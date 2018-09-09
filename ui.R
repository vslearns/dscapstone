
library(shiny)

shinyUI(fluidPage(theme = "style.css",
  
  titlePanel("typist"),
  
  sidebarLayout(position = "right",
    sidebarPanel(
      textInput("ptext", "Preceding Text", placeholder = "Only the last 3 words will be used.")
    ),
    
    mainPanel(
      "The next generation of predictive typing.",
      tags$br(), tags$br(), tags$br(),
      p(tags$b("Wait until 'typist is ready' appears below.")),
      textOutput("presult")
    )
  ),
  
  hr(),
  
  fluidRow(
    column(12,
           h3("about typist"),
           p("typist was created as the final product for the ", 
             tags$b("Coursera Data Science Specialization Capstone Project"),
             ". The goal of this project was to create a predictive text model using a provided corpus of the English language."),
           p("As a result, I created typist -- a model that predicts a user's next word based on the one, two, or three preceding words."))
  )
))
