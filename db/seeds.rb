# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Device.create(location: "OpenLab", name: "device1")
Device.create(location: "３F情報卒研室", name: "sotukenDev")
Device.create(location: "４F倉庫", name: "soukoDevice1")

randNum = Random.new(1)

Device.all.each do |dev|
  dev.temperatures.create(temp: randNum.rand * 100)
  dev.water_temperatures.create(w_temp: randNum.rand * 100)
  dev.illuminations.create(illum: randNum.rand * 100)
end
