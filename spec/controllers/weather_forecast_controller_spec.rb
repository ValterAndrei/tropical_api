require 'rails_helper'

RSpec.describe WeatherForecastController, type: :request do
  describe 'GET #check_forecast' do
    before do
      allow(TropicalService).to receive(:run).and_return(
        OpenStruct.new(payload)
      )

      get '/forecast'
    end

    context 'when found the city' do
      let(:payload) { { data: 'data_values', status: '200' } }

      it 'returns http success' do
        expect(response).to be_successful
      end

      it 'return data values' do
        expect(response.body).to eq(payload[:data])
      end
    end

    context 'when city not was found' do
      let(:payload) { { data: 'data_error', status: '404' } }

      it 'returns http not found' do
        expect(response).to be_not_found
      end

      it 'return data values' do
        expect(response.body).to eq(payload[:data])
      end
    end
  end

  describe 'POST #create_tweet' do
    before do
      allow(TropicalService).to receive(:run).and_return(
        OpenStruct.new(payload)
      )
      allow(TwitterService).to receive(:send_tweet).and_return(
        OpenStruct.new(id: 10)
      )

      post '/notification'
    end

    context 'when found the city' do
      let(:payload) { { full_sumary: 'data_values', status: '200' } }

      it 'returns http success' do
        expect(response).to be_successful
      end

      it 'return data values' do
        expect(JSON.parse(response.body)).to eq({ 'tweet_id' => 10, 'message' => 'data_values' })
      end
    end

    context 'when city not was found' do
      let(:payload) { { data: 'data_error', status: '404' } }

      it 'returns http success' do
        expect(response).to be_not_found
      end
    end
  end
end
