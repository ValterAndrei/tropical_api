class TropicalService
  class << self
    def run(city)
      Tropical::OpenWeatherMap.new(
        {
          q: city,
          lang: 'pt_br',
          units: 'metric',
          appid: ENV['TROPICAL_APPID']
        }
      )
    end
  end
end
