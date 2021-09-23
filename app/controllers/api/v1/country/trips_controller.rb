class Api::V1::Country::TripsController < ApplicationController
  def create
    countries = Country.where(capital: params[:cities])
    render json: TripService.new(countries).process
  end
end