library(shiny)


shinyServer(function(input, output, session) {
  #filterdata
  selectedData <- reactive({
    subset(iris,  iris$Species==input$Spec) 
  })
  
  # Combine the selected variables into a new data frame
  output$plot1 <- renderPlot({
    
    colx <- as.numeric(input$xcol)
    coly <- as.numeric(input$ycol)
    plot(selectedData()[,colx], selectedData()[,coly], main="Scatter Plot for Iris Dataset",
         xlab=names(iris[colx]), ylab=names(iris[coly])
         ) 
  })
  
})
