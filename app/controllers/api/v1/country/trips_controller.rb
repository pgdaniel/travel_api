class Api::V1::Country::TripsController < ApplicationController
  def create
    render json: cities
  end

  def cities
    Country.where(capital: params[:cities]).best_route
  end
end