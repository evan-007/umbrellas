class WeatherReport
	attr_reader :location

	def initialize(location)
		@location = location
	end

	def ll
		(Geokit::Geocoders::GoogleGeocoder.geocode "#{location}").ll.split(',')
	end

	def get_weather
    ForecastIO.forecast(ll[0], ll[1]).hourly.icon
	end

	def raining?
		self.get_weather.include? "rain"
	end

	def umbrella?
		self.raining?
	end
  
  def timezone
    NearestTimeZone.to(ll[0].to_f, ll[1].to_f)
  end
  
  def user_time
    Timezone::Zone.new(zone: timezone).time Time.now
  end
end