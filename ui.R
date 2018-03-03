library(shiny)
shinyUI(fluidPage(
  titlePanel("Iris Dataset"),
  sidebarLayout(
    sidebarPanel(
      h3("Select the diferent check boxes to see the relation in the Sepal and petal lenght and width of the three species"),
      radioButtons("x", "Select X-axis:",
                   list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),
      radioButtons("y", "Select Y-axis:",
                   list("Sepal.Length"='e', "Sepal.Width"='f', "Petal.Length"='g', "Petal.Width"='h'))
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))