class SendTweetNotificationJob < ApplicationJob
  queue_as :default

  def perform
    return unless Rails.env.production?

    tropical = TropicalService.run('Sao Jose dos Campos, br')
    TwitterService.send_tweet(tropical.sumary_current_day)
  end
end
