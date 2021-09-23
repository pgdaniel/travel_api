namespace :location do
  desc "Location spike"
  task testit: :environment do
    countries = Country.where.not(capital: nil).where.not(capital: "").shuffle.take(4)
    puts TripService.new(countries).process
  end
end
