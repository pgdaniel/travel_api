class Api::V1::CountriesController < ApplicationController
#   skip_before_action :verify_authenticity_token

  def index
    render json: Country.all	
  end

  def create
     params[:data][:attributes][:name]
  end
end