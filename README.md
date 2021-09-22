# README

## Steps

1) Read in countries from external API via the seeds file
2) create and populate the Country data model via the seeds file
3) create the first endpoint to return name and capital

 Country.where('latitude BETWEEN ? AND ?', 38, 39).where('longitude BETWEEN ? AND ?', 0, 360).last.latitude.to_f
 curl http://localhost:3000/friends -X POST --data-binary '' | jq

  curl http://localhost:3000/countries -X POST \ -H 'Content-Type: application/vnd.api+json' \ --data-binary '{"data":{"type":"countries","attributes":{"name": "Cyril}}}' | jq | more

   curl http://localhost:3000/countries -X POST \q curl http://localhost:3000/countries -X POST -H 'Content-Type: application/vnd.api+json' --data-binary '{"data":{"type":"countries","attributes":{"name": "Cyril"}}}' | jq

   