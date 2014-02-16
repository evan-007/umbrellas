class WeatherReportsController < ApplicationController
	def new
		@report = WeatherReport.new(place: params[:place])
	end

	def report
		@report = WeatherReport.new(place: params[:place])
		if
			@report.umbrella?
			flash[:danger] = "Oh it's raining"
			render root
		else
			flash[:success] = "nope!"
			render new
		end
	end
end
