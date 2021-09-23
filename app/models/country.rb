class Country < ApplicationRecord
  acts_as_mappable lat_column_name: :latitude,
  		   lng_column_name: :longitude

  def self.coordinate_bounds(lat_long_params)
    Country.where('latitude BETWEEN ? AND ?', lat_long_params[:min_lat], lat_long_params[:max_lat])
          .where('longitude BETWEEN ? AND ?', lat_long_params[:min_long], lat_long_params[:max_long])
  end

  scope :best_route, lambda { take(5) }
end
