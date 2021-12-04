server <- function(input, output) {
    
    output$ngram_output <- renderText({
        ngrams(input$user_input)
    })
    
}