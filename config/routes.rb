require 'sidekiq/web'
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  root 'welcome#index'

  get  'forecast', to: 'weather_forecast#check_forecast'
end
