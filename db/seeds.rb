# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
plant = Plant.new(
name: "Geranium",
category: "Vivace", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Le géranium s'acclimate parfaitement sous nos latitudes. Cette plante vivace résiste aux températures glaciales. Un sol limoneux au pH alcalin ou neutre sera idéal pour cette plante vivace. Cette plante vivace a besoin d'un apport moyen en eau et d'un sol sec ou drainé si vous souhaitez lui garantir un environnement parfait.",
luminosity: "peu ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 7,
plantation_months: ["February", "March", "April",  "September", "December"],
harvest_months:["June", "July", "September"],
min_temp: 10,
max_temp: 15,
spacing_in_cm: 30,
)
file = URI.open("https://www.willemsefrance.fr/Files/126284/Img/02/027870-3-Geraniums-oxonianum-Southcomble-double_1x800.jpg")
plant.photo.attach(io: file, filename: "geranium.png", content_type: "image/png")
plant.save!