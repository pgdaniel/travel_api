class Api::V1::Country::CapitalsController < ApplicationController
  def create
    render json: countries.pluck(:capital)
  end

  def countries
    Country.coordinate_bounds(lat_long_params)
  end

  def lat_long_params
     {
       min_lat: params[:min_lat],
       max_lat: params[:max_lat],
       min_long: params[:min_long],
       max_long: params[:max_long]
     }
  end
end