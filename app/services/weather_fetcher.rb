class WeatherFetcher

  def get_weather(city)
    latlng = Geocoder.coordinates(city)
    call = 'forecast'
    api_key = ENV.fetch("DARK_SKY_API_KEY")
    url = HTTParty.get("https://api.forecast.io/#{call}/#{api_key}/#{latlng.first},#{latlng.last}", :headers => { 'ContentType' => 'application/json' })
    response = JSON.parse(url.body)

    in_celcius(response['currently']['temperature'])
  end

  private

  def in_celcius(temperature_in_f)
    ((temperature_in_f - 32) * 5.0 / 9.0).round
  end
end
