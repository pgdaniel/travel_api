class TripService
  def initialize(countries)
    @countries = countries
    @shortest_trip_in_miles = 0
    @final_list = []
  end

  def process
    @countries.each do |country|
      total_miles_for_country = 0
      current_list = []

      sub_countries = @countries - [country]

      sub_countries.each do |sub_country|
        current_list = [country] + sub_countries
        total_miles_for_country += country.distance_from(sub_country, units: :miles)
      end

      if @shortest_trip_in_miles < total_miles_for_country
        @shortest_trip_in_miles = total_miles_for_country
        @final_list = current_list
      end
    end

    capital_string_list = @final_list.pluck(:capital)
    {
      start_city: capital_string_list[0],
      stop_one: capital_string_list[1],
      stop_two: capital_string_list[2],
      end_city: capital_string_list[3]
    }
  end
end