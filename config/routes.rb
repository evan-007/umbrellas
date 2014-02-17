Umbrellas::Application.routes.draw do
      
  root "weather_reports#new"
  post "/report", to: "weather_reports#report"
  get "/about", to: "weather_reports#about", as: 'about'
end
