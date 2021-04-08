class TropicalService
  class << self
    def run(params)
      Tropical::OpenWeatherMap.new(
        {
          q:     params['q'],
          lang:  params['lang'] || 'pt_br',
          units: params['units'] || 'metric',
          cnt:   params['cnt'] || '0',
          appid: ENV['TROPICAL_APPID']
        }
      )
    end
  end
end
