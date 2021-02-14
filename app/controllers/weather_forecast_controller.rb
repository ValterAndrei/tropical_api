class WeatherForecastController < ApplicationController
  def check_forecast
    tropical = TropicalService.run(params)

    json_response(tropical.data)
  end

  # def post_tweet
  #   tropical = TropicalService.run(params)

  #   json_response(tropical.data)
  # end
end
