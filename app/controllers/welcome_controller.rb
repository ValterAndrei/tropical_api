class WelcomeController < ApplicationController
  def index
    @api = 'https://github.com/ValterAndrei/tropical_api'
    @gem = 'https://github.com/ValterAndrei/tropical'
  end
end
