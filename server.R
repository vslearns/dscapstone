#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

source("predictor.R")

print("Loading two")
two <- data.table::fread("data/two.csv")
assign("two", two, .GlobalEnv)

print("Loading thr")
thr <- data.table::fread("data/thr.csv")
assign("thr", thr, .GlobalEnv)

print("Loading fou")
fou <- data.table::fread("data/fou.csv")
assign("fou", fou, .GlobalEnv)

shinyServer(function(input, output) {
   
  output$presult <- renderText({
    if (input$ptext == "") return("typist is ready")
    
    words <- scan(text = input$ptext, what = "", quiet = T)
    if (length(words) == 1) {
      pred <- pred.two(words[1], n = 3)[[3]]
      return(paste(pred[1], pred[2], pred[3], sep = ", "))
    } else if (length(words) == 2) {
      pred <- pred.tth(words[1], words[2], n = 3)[[1]]
      return(paste(pred[1], pred[2], pred[3], sep = ", "))
    } else {
      n <- length(words)
      pred <- pred.ttf(words[n - 2], words[n - 1], words[n], n = 3)[[1]]
      return(paste(pred[1], pred[2], pred[3], sep = ", "))
    }
  })
  
})
