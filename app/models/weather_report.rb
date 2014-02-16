class WeatherReport
	attr_reader :place

	def initialize(place)
		@place = place
	end

	def ll
		(Geokit::Geocoders::GoogleGeocoder.geocode "#{place}").ll.split(',')
	end

	def get_weather
		ForecastIO.forecast(ll[0], ll[1]).hourly.summary
	end

	def raining?
		self.get_weather.include? "rain"
	end

	def umbrella?
		self.raining?
	end
end