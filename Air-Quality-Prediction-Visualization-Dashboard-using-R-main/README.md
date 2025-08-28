## Air Quality Prediction & Visualization Dashboard

An interactive R Shiny dashboard that visualizes air quality trends and provides short-term forecasts (PM2.5, PM10, NO₂) for urban locations using time-series data.

📌 Project Overview

**This project aims to:**

Analyze air pollution data from global cities

Visualize key pollutants and weather conditions over time

Forecast short-term air quality using time-series models

Provide an intuitive, interactive interface for exploration and insights

## 📈 Features

✅ Interactive dashboard (Shiny)
✅ Daily trends of PM2.5, PM10, and NO₂
✅ Location-wise filtering
✅ 7-day forecast using ARIMA models
✅ Clean, responsive UI with dynamic charts

**🧰 Tools & Technologies**

Language: R

**Libraries:**

shiny, forecast, ggplot2, dplyr, lubridate, plotly, readr

Visualization: ggplot2, plotly

Time Series Modeling: forecast::auto.arima()

**🗃️ Dataset**

The dataset includes:

Air pollutant levels: PM2.5, PM10, NO₂

Weather indicators: temperature, wind, humidity, UV index

Date and location metadata

📁 Sample data included: sample_air_quality_data.csv

🚀 How to Run
Install required libraries
```
install.packages(c("shiny", "ggplot2", "dplyr", "lubridate", "forecast", "readr", "plotly"))
Run the app
```
```
shiny::runApp('path_to_your_project_folder')
```

📊 Sample Screenshot

![Screenshot](Sample_Screenshot)


## 📌 Future Improvements

Add hourly forecasts and AQI calculation

Integrate map-based pollutant visualization

Enable historical comparisons and downloadable reports

