# README Trip API

## Steps/Brainstorming

1) Read in countries from external API via the seeds file
2) create and populate the Country data model via the seeds file
3) create the first endpoint to return name and capital

USA an Canada

Country.where('latitude BETWEEN ? AND ?', 26, 47).where('longitude BETWEEN ? AND ?', -131, -71.04) 

Country.where('latitude BETWEEN ? AND ?', 30, 40).where('longitude BETWEEN ? AND ?', -135, -70.04).pluck(:iso_3_code).include? "USA"

Some lat and long values are missing?

## Running

I included a docker-compose file which you can run if you don't have a ruby environment

## Docker install

### Install via Docker Desktop (the first 2 steps might take a while)

* From a shell run the following:

`docker-compose build`

`docker-compose run web bundle`

`docker-compose run web rake db:setup`

`docker-compose up`

there should now be a server running on port 3000 of localhost

### Install via Regular ruby environment
`bundle install`
`rake db:setup`
`rails s`

there should now be a server running on port 3000 of localhost

### Endpoints for exercise

* Endpoint 1:

`curl --location --request GET 'http://localhost:3000/api/v1/country/codes/USA'`

* Endpoint 2:

`curl --location --request GET 'http://localhost:3000/api/v1/country/capitals?min_lat=26&max_lat=47&min_long=-131&max_long=-71'`

* Endpoint 3:

```bash
curl --location --request POST 'http://localhost:3000/api/v1/country/trips' \
--header 'Content-Type: application/json' \
--data-raw ' {
       "cities": ["Ottawa", "Washington D.C.", "Paris", "Bishkek"]
}'
```