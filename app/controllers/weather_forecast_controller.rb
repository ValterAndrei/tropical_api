class WeatherForecastController < ApplicationController
  before_action :set_tropical, only: %i[check_forecast create_tweet]

  def check_forecast
    json_response(@data, @status)
  end

  def create_tweet
    if @status == '200'
      tweet = TwitterService.send_tweet(@tropical.full_sumary)

      json_response({ tweet_id: tweet.id, message: @tropical.full_sumary })
    else
      json_response(@data, @status)
    end
  end

  private

  def set_tropical
    @tropical = TropicalService.run(params)
    @data     = @tropical.data
    @status   = @tropical.status
  end
end
