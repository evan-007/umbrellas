class WeatherReportsController < ApplicationController
	def new
	end
  
  def about
  end

	def report
    @report = WeatherReport.new(params[:location])
    unless @report.ll == []
      @umbrella = @report.umbrella?
    else
      flash[:notice] = "#{params[:location]} is not valid!"
      render :new
    end
	end
end
