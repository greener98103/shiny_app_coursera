# ui.R
# Below is the User interface for our gene viewer app
# the sidepanel menu send which selected gene list should be filtered and then displayed as a heatmap
library(shiny)

shinyUI(fluidPage(
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create Heatmaps of selected transcriptomic signatures in subjects infected with WNV."),
      
      selectInput("variable", "Variable:", 
                  list("Global Heat Map" = "global",
                  "Immune Genes" = "immune",
                  "Innate Immune Genes" = "innate",
                  "Global Asymptomatic only" = "global_asymptom",
                  "Global Symptomatic only" = "global_symptom"))
    
    ),
    mainPanel(
      
      plotOutput("newarray")
    )
  )
))