# Controller responsible for handling weather-related requests.
class WeatherController < ApplicationController
  def forecast
    found_cities = search_cities(params[:city_name])
    if found_cities.blank?
      render json: { message: 'No cities found' }, status: :not_found
      return
    end

    forecast = weather_forecast(found_cities)
    render json: forecast, status: :ok
  rescue StandardError => e
    Rails.logger.error("An error occured: #{e.message}")
    render json: { error: e.message }, status: :bad_request
  end

  private

  def search_cities(city_name)
    response = HTTParty.get(base_cities_url + city_name)
    handle_request_error(response)
    clean_cities_response(response)
  end

  def weather_forecast(cities)
    forecast = []
    cities.each do |city|
      forecast.push({
                      city: city['city_name'],
                      state: city['state'],
                      forecast: min_max_temps(city['lat'], city['long'])
                    })
    end
    forecast
  end

  def min_max_temps(lat, long)
    daily_forecast = daily_weather(lat, long)
    return 'No weather data available' if daily_forecast.blank?

    daily_forecast.map do |entry|
      {
        date: Time.zone.at(entry['dt']).to_date,
        min: entry['temp']['min'],
        max: entry['temp']['max']
      }
    end
  end

  def daily_weather(lat, long)
    response = HTTParty.get(base_weather_url + weather_params(lat, long))
    return nil unless response.success?

    response['daily']
  end

  def weather_params(lat, long)
    "?lat=#{lat}&lon=#{long}" \
      "&exclude=current,minutely,hourly&units=metric&appid=#{weather_token}"
  end

  def clean_cities_response(cities)
    return [] if cities.blank?

    cities.select { |result| result['result_type'] == 'city' }
  end

  def handle_request_error(response)
    unless response.success?
      raise StandardError, response['message'] || 'Request failed'
    end
  rescue HTTParty::Error, StandardError => e
    Rails.logger.error("HTTParty error: #{e.message}")
    raise StandardError, response['message'] || 'Request failed'
  end

  def base_cities_url
    'https://search.reservamos.mx/api/v2/places?q='
  end

  def base_weather_url
    'https://api.openweathermap.org/data/2.5/onecall'
  end

  def weather_token
    ENV['OPEN_WEATHER_TOKEN']
  end
end
