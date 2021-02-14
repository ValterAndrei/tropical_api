class SendTweetNotificationJob < ApplicationJob
  queue_as :default

  def perform
    puts "Olá mundo!"
  end
end
