class SendTweetNotificationJob < ApplicationJob
  queue_as :default

  def perform
    return unless Rails.env.production?

    tropical = TropicalService.run('São José dos Campos, br')
    TwitterService.send_tweet(tropical.sumary_current_day)
  end
end
