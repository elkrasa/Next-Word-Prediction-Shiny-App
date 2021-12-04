library(shiny)
library(tidyverse)
library(stringr)
source("PredictionModel.R")
ui <- fluidPage(
     titlePanel("Next Word Prediction App"),
            sidebarLayout(
                sidebarPanel(h3("Enter a word or multiple words to the text box area."),
                             h3("Below the textbox area you will see Next Predicted Word.")),
        mainPanel(
            tabsetPanel(
                tabPanel(em("App page"),
                         textInput("user_input", h3(strong("Input:",style="color:green")), 
                                   value = "Enter word or words here"),
                         h3(strong("Next Predicted Word:",style="color:green")),
                         h3(span(textOutput("ngram_output")))),
                
                tabPanel(em("Links"),
    tags$p("A Shiny app takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word. 
           You can find the source code for the app on my ",
                                tags$a("github page.", href = "https://github.com/elkrasa/Next-Word-Prediction-Shiny-App")),
    tags$p(tags$a("The presentation", href = "https://github.com/elkrasa/Next-Word-Prediction-Shiny-App")," created with R Studio Presenter was published on RPubs."),
    br(),
                     img(src = "WordsCloud.png", height = 432, width = 700))))))
    
    
