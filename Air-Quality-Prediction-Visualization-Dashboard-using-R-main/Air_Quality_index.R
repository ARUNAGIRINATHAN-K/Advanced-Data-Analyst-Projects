# Load necessary libraries
library(shiny)
library(ggplot2)
library(dplyr)
library(lubridate)
library(forecast)
library(tidyr)

# Load the data (update path as needed)
data <- read_excel("C:/Users/ARUNAGIRINATHAN/Desktop/sample_air_quality_data.xls")

# Convert last_updated to Date
data$last_updated <- as.POSIXct(data$last_updated, format = "%Y-%m-%d %H:%M")
data$date <- as.Date(data$last_updated)

# Filter relevant columns
air_data <- data %>% 
  select(country, location_name, date, air_quality_PM2.5, air_quality_PM10, air_quality_Nitrogen_dioxide)

# Handle invalid values
air_data <- air_data %>%
  filter(air_quality_PM2.5 > 0 & air_quality_PM10 > 0 & air_quality_Nitrogen_dioxide > 0)

# UI
iu <- fluidPage(
  titlePanel("Air Quality Forecast Dashboard"),
  sidebarLayout(
    sidebarPanel(
      selectInput("location", "Select Location:", choices = unique(air_data$location_name)),
      selectInput("pollutant", "Select Pollutant:", 
                  choices = c("PM2.5" = "air_quality_PM2.5", 
                              "PM10" = "air_quality_PM10",
                              "NO2" = "air_quality_Nitrogen_dioxide"))
    ),
    mainPanel(
      plotOutput("trendPlot"),
      plotOutput("forecastPlot")
    )
  )
)

# Server
server <- function(input, output) {
  filtered_data <- reactive({
    air_data %>%
      filter(location_name == input$location) %>%
      group_by(date) %>%
      summarise(value = mean(.data[[input$pollutant]], na.rm = TRUE))
  })
  
  output$trendPlot <- renderPlot({
    df <- filtered_data()
    ggplot(df, aes(x = date, y = value)) +
      geom_line(color = "steelblue") +
      labs(title = paste("Trend of", input$pollutant, "in", input$location),
           x = "Date", y = input$pollutant) +
      theme_minimal()
  })
  
  output$forecastPlot <- renderPlot({
    df <- filtered_data()
    ts_data <- ts(df$value, frequency = 7)  # Weekly seasonality
    model <- auto.arima(ts_data)
    forecasted <- forecast(model, h = 7)
    plot(forecasted, main = paste("7-Day Forecast for", input$pollutant))
  })
}

# Run the app
shinyApp(ui = iu, server = server)
