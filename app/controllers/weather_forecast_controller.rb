class WeatherForecastController < ApplicationController
  def check_forecast
    tropical = TropicalService.run(params)

    json_response(tropical.data)
  end

  def create_tweet
    tropical = TropicalService.run(params)

    if tropical.status == '200'
      sumary = tropical.full_sumary
      tweet  = TwitterService.send_tweet(sumary)

      json_response({ tweet_id: tweet.id, message: sumary })
    else
      json_response(tropical.data, tropical.status)
    end
  end
end
