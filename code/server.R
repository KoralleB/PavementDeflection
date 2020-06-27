
shinyServer <- function(input, output) {
  
  output$sliderCycle <- renderUI({
    if (input$radioStation == 1 & input$radioLoad == 40) {
      RawChoice <- subset(Raw1, Load == 40)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 1 & input$radioLoad == 60) {
      RawChoice <- subset(Raw1, Load == 60)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 1 & input$radioLoad == 80) {
      RawChoice <- subset(Raw1, Load == 80)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 1 & input$radioLoad == 100) {
      RawChoice <- subset(Raw1, Load == 100)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 2 & input$radioLoad == 40) {
      RawChoice <- subset(Raw2, Load == 40)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 2 & input$radioLoad == 60) {
      RawChoice <- subset(Raw2, Load == 60)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 2 & input$radioLoad == 80) {
      RawChoice <- subset(Raw2, Load == 80)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 2 & input$radioLoad == 100) {
      RawChoice <- subset(Raw2, Load == 100)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 4 & input$radioLoad == 40) {
      RawChoice <- subset(Raw4, Load == 40)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 4 & input$radioLoad == 60) {
      RawChoice <- subset(Raw4, Load == 60)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 4 & input$radioLoad == 80) {
      RawChoice <- subset(Raw4, Load == 80)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 4 & input$radioLoad == 100) {
      RawChoice <- subset(Raw4, Load == 100)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 5 & input$radioLoad == 40) {
      RawChoice <- subset(Raw5, Load == 40)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 5 & input$radioLoad == 60) {
      RawChoice <- subset(Raw5, Load == 60)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 5 & input$radioLoad == 80) {
      RawChoice <- subset(Raw5, Load == 80)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 5 & input$radioLoad == 100) {
      RawChoice <- subset(Raw5, Load == 100)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 6 & input$radioLoad == 40) {
      RawChoice <- subset(Raw6, Load == 40)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 6 & input$radioLoad == 60) {
      RawChoice <- subset(Raw6, Load == 60)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 6 & input$radioLoad == 80) {
      RawChoice <- subset(Raw6, Load == 80)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
    else if (input$radioStation == 6 & input$radioLoad == 100) {
      RawChoice <- subset(Raw6, Load == 100)
      sliderTextInput(inputId = "sliderCycle", 
                      label = NULL, 
                      choices = unique(RawChoice$MeasurementID),
                      width='100%')
    }
  })
  
  PlotData <- eventReactive(c(input$radioStation, input$radioLoad, input$sliderCycle), {
    if (input$radioStation == 1 & input$radioLoad == 40) {
      selectData1 <- subset(Raw1, Load == 40 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 1 & input$radioLoad == 60) {
      selectData1 <- subset(Raw1, Load == 60 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 1 & input$radioLoad == 80) {
      selectData1 <- subset(Raw1, Load == 80 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 1 & input$radioLoad == 100) {
      selectData1 <- subset(Raw1, Load == 100 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 2 & input$radioLoad == 40) {
      selectData1 <- subset(Raw2, Load == 40 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 2 & input$radioLoad == 60) {
      selectData1 <- subset(Raw2, Load == 60 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 2 & input$radioLoad == 80) {
      selectData1 <- subset(Raw2, Load == 80 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 2 & input$radioLoad == 100) {
      selectData1 <- subset(Raw2, Load == 100 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 4 & input$radioLoad == 40) {
      selectData1 <- subset(Raw4, Load == 40 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 4 & input$radioLoad == 60) {
      selectData1 <- subset(Raw4, Load == 60 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 4 & input$radioLoad == 80) {
      selectData1 <- subset(Raw4, Load == 80 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 4 & input$radioLoad == 100) {
      selectData1 <- subset(Raw4, Load == 100 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 5 & input$radioLoad == 40) {
      selectData1 <- subset(Raw5, Load == 40 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 5 & input$radioLoad == 60) {
      selectData1 <- subset(Raw5, Load == 60 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 5 & input$radioLoad == 80) {
      selectData1 <- subset(Raw5, Load == 80 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 5 & input$radioLoad == 100) {
      selectData1 <- subset(Raw5, Load == 100 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 6 & input$radioLoad == 40) {
      selectData1 <- subset(Raw6, Load == 40 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 6 & input$radioLoad == 60) {
      selectData1 <- subset(Raw6, Load == 60 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 6 & input$radioLoad == 80) {
      selectData1 <- subset(Raw6, Load == 80 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
    else if (input$radioStation == 6 & input$radioLoad == 100) {
      selectData1 <- subset(Raw6, Load == 100 & MeasurementID == input$sliderCycle)
      selcetData2 <- data.frame(LengthX = selectData1$RawX, deformation = selectData1$RawY)
    }
  },  ignoreNULL = FALSE)
  
  output$defPlot <- renderPlot({
    ggplot(PlotData(), aes(LengthX, deformation)) + 
      geom_point(size=0.1) +
      geom_line() +
      theme_minimal() +
      xlab("X (m)") +
      ylab(expression("Deflection Depth (mm)")) +
      xlim(0, 7.1) +
      ylim(-0.72, 1) +
      theme(axis.text.x=element_text(hjust = 0.7))
  })
  
}