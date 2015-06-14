library(shiny)

########UI
library(shiny)
library(datasets)

shinyUI(pageWithSidebar(
  headerPanel('Iris dataset plot'),
  sidebarPanel(
    helpText("Select the species to filter dataset. Toggle the x and y variables to see the scatter plot."),
    selectInput('Spec', 'Filter by Species', choices=c("setosa", "versicolor", "virginica")),
    selectInput('xcol', 'X Variable', choices=c("Sepal.Length"=1, "Sepal.Width"=2, "Petal.Length"=3, "Petal.Width"=4)),
    selectInput('ycol', 'Y Variable', choices=c("Sepal.Length"=1, "Sepal.Width"=2, "Petal.Length"=3, "Petal.Width"=4))
  ),
  
  mainPanel(
    plotOutput('plot1')
  )
))



#c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width")
#c("Sepal.Length"=1, "Sepal.Width"=2, "Petal.Length"=3, "Petal.Width"=4)