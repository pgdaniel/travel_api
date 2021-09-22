(1..6).each do |p|
  response = HTTParty.get("https://api.worldbank.org/v2/country?page=#{p}&format=json")
  JSON.parse(response.body)[1].each do |element|
    Country.find_or_create_by(iso_3_code: element['id'], longitude: element['longitude'], latitude: element['latitude'])
  end
end