require 'rails_helper'

RSpec.describe WeatherForecastController, type: :request do
  describe 'GET #check_forecast' do
    before do
      allow(TropicalService).to receive(:run).and_return(
        OpenStruct.new(data)
      )

      get '/forecast'
    end

    context 'when found the city' do
      let(:data) { { data: 'data_values', status: '200' } }

      it 'returns http success' do
        expect(response).to be_successful
      end
    end

    context 'when city not was found' do
      let(:data) { { data: 'data_error', status: '404' } }

      it 'returns http success' do
        expect(response).to be_not_found
      end
    end
  end
end
