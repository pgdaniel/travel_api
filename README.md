# README

## Steps

1) Read in countries from external API via the seeds file
2) create and populate the Country data model via the seeds file
3) create the first endpoint to return name and capital

USA an Canada

Country.where('latitude BETWEEN ? AND ?', 26, 47).where('longitude BETWEEN ? AND ?', -131, -71.04) 

Country.where('latitude BETWEEN ? AND ?', 30, 40).where('longitude BETWEEN ? AND ?', -135, -70.04).pluck(:iso_3_code).include? "USA"

Some lat and long values are missing?

