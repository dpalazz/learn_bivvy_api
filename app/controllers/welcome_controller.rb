class WelcomeController < ApplicationController
  def index
    render json: {status: 200, message: 'Welcome to the Learn Bivvy API!'}
  end
end
