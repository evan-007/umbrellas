Umbrellas::Application.routes.draw do
      
  root "weather_reports#new"
  post "/report", to: "weather_reports#results"
end
