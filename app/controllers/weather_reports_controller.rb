class WeatherReportsController < ApplicationController
	def new
	end

	def report
		@report = WeatherReport.new(params[:location]).get_weather
	end
end
