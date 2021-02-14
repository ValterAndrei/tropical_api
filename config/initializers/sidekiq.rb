sidekiq_config = { url: ENV['REDIS_URL'] || ENV['REDISTOGO_URL'] }

Sidekiq.configure_server do |config|
  config.redis = sidekiq_config

  # CRON
  Sidekiq::Cron::Job.load_from_hash YAML.load_file('config/schedule.yml')
end

Sidekiq.configure_client do |config|
  config.redis = sidekiq_config
  config.redis = { size: 1 }
end
