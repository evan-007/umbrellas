class WeatherReportsController < ApplicationController
	def new
	end

	def report
		place = params[:place].to_s
		@place = place
		@report = WeatherReport.new(params[:place]).get_weather
	end
end
