class Api::V1::Country::CodesController < ApplicationController

  def show
    render json: Country.find_by(iso_3_code: params[:id]), only: [:name, :capital]
  end
end