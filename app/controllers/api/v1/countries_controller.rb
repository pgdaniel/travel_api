class Api::V1::CountriesController < ApplicationController
  def index
    render json: Country.all
  end
end