
header <- dashboardHeader(
  title = "Raw Bowls"
)  

body <- dashboardBody(
  fluidRow(
    
    column(width = 12,
           box(width = NULL, solidHeader = TRUE, status = "success",
               plotOutput("defPlot"))),
    
    column(width = 5, offset = 2,
           box(title = "Select Station", solidHeader = TRUE, status = "success",
               height = 200,
               radioButtons(inputId = "radioStation", 
                            label = NULL,
                            choices = list("Station No. 1" = 1,
                                           "Station No. 2" = 2,
                                           "Station No. 4" = 4,
                                           "Station No. 5" = 5, 
                                           "Station No. 6" = 6),
                            selected = 1))), 
    
    column(width = 5,
           box(title = "Select Load", solidHeader = TRUE, status = "success",
               height = 200, 
               radioButtons(inputId = "radioLoad",
                            label = NULL,
                            choices = list("40kN" = 40,
                                           "60kN" = 60,
                                           "80kN" = 80,
                                           "100kN" = 100),
                            selected = 40))),
    
    chooseSliderSkin("Round"),  
    
    column(width = 12,
           box(title = "Select MeasurementID", solidHeader = TRUE, status = "success",
               width = NULL,
               uiOutput("sliderCycle")))
    
  )
)

dashboardPage(
  skin = "green",
  header,
  dashboardSidebar(disable = TRUE),
  body
)