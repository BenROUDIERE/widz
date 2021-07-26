# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## VIVACE
Plant.destroy_all

plant = Plant.new(
name: "Geranium",
category: "vivace", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Tout convient à cette plante vivace : en adoptant le géranium vivace ibericum, vous ne risquez pas d'impair sur l’exposition idéale. Sa floraison débute en avril et finit en juillet. Grâce à cette plante vivace, vous pourrez contempler de belles fleurs de couleur bleue. C'est une plante vivace qui a pour particularité de perdre ses feuilles en hiver, le feuillage de Geranium ibericum est dit caduc.",
luminosity: "peu ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 7,
plantation_months: ["Février", "March", "April","September", "December"],
harvest_months:["June", "July", "September"],
min_temp: 10,
max_temp: 15,
spacing_in_cm: 30,
)
file = URI.open("https://www.conservation-nature.fr/wp-content/uploads/img/geranium+ibericum/247599587_70c5238458_z.jpg")
plant.photo.attach(io: file, filename: "geranium.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Agapanthe Blanc",
category: "vivace", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "L’agapanthe est une merveilleuse plante vivace qui fleurit en été, offrant ainsi de majestueuses hampes florales. L’agapanthe est une plante qui ne résiste pas aux fortes gelées et doit donc être cultivée dans les zones où l’hiver reste relativement doux. Si l’hiver est doux n’y touchez pas et laissez le feuillage en place durant l’hiver.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 7,
plantation_months: ["Février", "March", "April",  "May"],
harvest_months:["June", "July", "September"],
min_temp: 10,
max_temp: 30,
spacing_in_cm: 25,
)
file = URI.open("https://images.truffaut.com/Articles/jpg/0201000/201704_004_1000.jpg")
plant.photo.attach(io: file, filename: "Agapanthe.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Rose trèmière naine",
category: "vivace", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "la rose trémière naine est une plante qui mesure de 60 à 70 centimètres de hauteur et qui fleurit de fin mai jusqu’aux gelées. Ses tiges sont rigides et vous donneront de belles fleurs en forme de gros pompons doubles de 8 à 10 cm de diamètre. De taille réduite, elles ne nécessitent pas de tuteur et résistent au vent. L’entretien d’une rose trémière naine est extrêmement simple. Il vous suffit de couper à la base les tiges florales fanées et éventuellement de prévoir quelques arrosages par temps sec ainsi qu'un apport d’engrais complet en début de saison.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 5,
plantation_months: ["Février", "March", "April",  "May"],
harvest_months:["Février", "March", "April",  "May"],
min_temp: -28,
max_temp: 30,
spacing_in_cm: 25,
)
file = URI.open("http://www.gazon-magique.com/wp-content/uploads/2018/09/Rose-tremiere.jpg")
plant.photo.attach(io: file, filename: "rose_tremiere.jpg", content_type: "image/jpg")
plant.save!

## COMESTIBLE

plant = Plant.new(
name: "Basilic",
category: "comestible", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "La plante fait partie des herbes aromatiques très utilisées en cuisine, particulièrement et d’abord autour de la méditéranée et maintenant un peu partout. Sans être particulièrement difficile à cultiver, le Basilic a des besoins, par exemple il lui faut 6 heures de soleil par jour, il ne se développe pas en dessous de 15°C… et il doit être protégé du vent.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "important", #['peu', 'moyen ', 'important']
water_frequency_in_days: 2,
plantation_months: ["March", "April",  "May"],
harvest_months:["July", "August", "September"],
min_temp: 10,
max_temp: 40,
spacing_in_cm: 30,
)
file = URI.open("https://www.consoglobe.com/wp-content/uploads/2021/04/Semis-basilic_ban_shutterstock_785723077-645x338.jpg")
plant.photo.attach(io: file, filename: "basilic.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Romarin",
category: "comestible", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Le Romarin est une plante à croissance lente de la famille des lamiacées. Il devient finalement un très joli petit arbrisseau condimentaire à feuillage persistant, pourvu de belles fleurs bleu clair. Excellente plante mellifère attirant les abeilles et les papillons. En cuisine, c'est une herbe aromatique hors classe pour la cuisson et les grillades à la saveur et au parfum délicieux. Peut être récolté tout au long de l'année. Semer sous verre et quand les jeunes plants sont assez grands, les repiquer ou bien les mettre en pots. Germination et croissance lente !",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "peu", #['peu', 'moyen ', 'important']
water_frequency_in_days: 10,
plantation_months: ["May", "June"],
harvest_months:["June", "July", "August", "September"],
min_temp: -10,
max_temp: 40,
spacing_in_cm: 40,
)
file = URI.open("https://www.aujardindys.fr/wp-content/uploads/2021/02/bouture-romarin.jpg")
plant.photo.attach(io: file, filename: "romarin.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Estragon",
category: "comestible", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "C’est l’une des fines herbes à avoir toujours sous la main. Excellent condiment culinaire, la saveur de ses feuilles est unique. Plante aromatique facile à cultiver, l’estragon s’acclimatera sans soucis sur votre balcon. En été, arrosez de manière à maintenir l’humidité au pied et à pincer la plante au moment de la floraison. Si l’hiver est rigoureux, pensez à pailler la base de la touffe. Le printemps revenu, elle repartira des racines.",
luminosity: "peu ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "peu", #['peu', 'moyen ', 'important']
water_frequency_in_days: 10,
plantation_months: ["Février", "March", "April"],
harvest_months:["March", "April", "May", "June", "July", "August", "September", "October"],
min_temp: -5,
max_temp: 45,
spacing_in_cm: 50,
)
file = URI.open("https://www.seeds-gallery.shop/8867-large_default/graines-de-estragon-herbe-dragon.jpg")
plant.photo.attach(io: file, filename: "estragon.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Thym d'hiver",
category: "comestible", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Le thym s’adapte à tous les types de sol, en particulier les sols légers et calcaires. Il supporte des conditions extrêmes telles qu’une terre pauvre, caillouteuse ou sèche. Redoutant l’excès d’humidité, il a des besoins en eau très faibles. Le thym se plaît en plein soleil, il est assez résistant au froid et supporte des températures jusqu’à -10°C. Au printemps, apparaissent des fleurs roses mellifères regroupées en épis serrés. La récolte s’effectue au fur et à mesure selon les besoins tout au long de l’année.",
luminosity: "peu ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 5,
plantation_months: ["April", "May", "June"],
harvest_months:["March", "April", "May", "June", "July", "August", "September", "October", "November", "December", "January", "Février"],
min_temp: -10,
max_temp: 45,
spacing_in_cm: 20,
)
file = URI.open("https://www.veseys.com/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/1/4/14890a-14890a-image-45690-french%20thyme.jpg")
plant.photo.attach(io: file, filename: "thym.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Romarin",
category: "comestible", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Le romarin est une plante à croissance lente de la famille des lamiacées. Le romarin (Salvia rosmarinus) devient finalement un très joli petit arbrisseau condimentaire à feuillage persistant, pourvu de belles fleurs bleu clair. Excellente plante mellifère attirant les abeilles et les papillons. En cuisine, c'est une herbe aromatique hors classe pour la cuisson et les grillades à la saveur et au parfum délicieux. Peut être récolté tout au long de l'année. Semer sous verre et quand les jeunes plants sont assez grands, les repiquer ou bien les mettre en pots. Germination et croissance lente !",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "faible", #['peu', 'moyen ', 'important']
water_frequency_in_days: 8,
plantation_months: ["May", "June"],
harvest_months:["June", "July", "August", "September"],
min_temp: -10,
max_temp: 45,
spacing_in_cm: 40,
)
file = URI.open("https://www.aromatiquebio.fr/wp-content/uploads/2019/10/Romarin4.jpg")
plant.photo.attach(io: file, filename: "romarin.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Stevia",
category: "comestible", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "La Stevia est une plante à germination difficile et irrégulière, ne pas lui donner trop d'eau. Dès que les jeunes plants sont maniables, les repiquer dans des pots ou bacs. Les feuilles de la varieté Stevia (Stevia rebaudiana) n'ont presque pas de calories et sont utilisées comme édulcorant dans le thé, le café et divers plats (éventuellement mouliné). Parfait pour les diabétiques, cette plante aromatique est originaire d'Amérique du Sud, utilisée comme additif alimentaire avec un goût sucré et un arrière goût de réglisse. La stevia a un pouvoir sucrant 40 fois supérieur à celui du sucre blanc ordinaire. Stevia ne supporte pas les températures basses de la nuit, rentrer les plantes lorsque la température n'atteint pas plus de 10ºC.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 5,
plantation_months: ["March", "April", "May", "June", "July", "August", "September", "October"],
harvest_months:["March", "April", "May", "June", "July", "August", "September", "October", "November", "December", "January", "Février"],
min_temp: 10,
max_temp: 45,
spacing_in_cm: 20,
)
file = URI.open("https://cdn1.fermedesaintemarthe.com/I-Autre-5650_1200x1200-stevia-rebaudiana-ab.net.jpg")
plant.photo.attach(io: file, filename: "stevia.jpg", content_type: "image/jpg")
plant.save!

## Fruits

plant = Plant.new(
name: "Mini-pommier Gala",
category: "fruits", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Le Mini-pommier Gala, est un arbre fruitier qui apporte un ornement original et attractif aux balcons et aux terrasses. Les couleurs des pommes sont d’un magnifique rouge orangé flamboyant avec un soupçon de jaune. Il conserve une taille réduite tout en donnant des fruits de taille normale durant le mois de septembre. Sa floraison, quant à elle, se fait au cours du mois d’avril. Il pousse surtout en Europe et s’adapte mal aux régions très chaudes. Il a besoin d’être partiellement exposé au soleil ou dans un endroit complètement ensoleillé pour atteindre une taille adulte d’environ de 1,5 mètre. Il a régulièrement besoin d’eau, de sa floraison à sa production des pommes.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 6,
plantation_months: ["Février", "March", "April", "May"],
harvest_months:["October", "November"],
min_temp: -15,
max_temp: 35,
spacing_in_cm: 80,
)
file = URI.open("https://www.jardiner-malin.fr/wp-content/uploads/2020/10/Pommier.jpg")
plant.photo.attach(io: file, filename: "pommier.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Mini-Ceriser",
category: "fruits", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "De par sa dimension réduite, le mini-cerisier Spur ‘Van’ (Prunus cerasus van), un cerisier nain, embellit merveilleusement un balcon ou un petit verger. La douceur et la fraîcheur de ses cerises charnues, croquantes et aussi grosses que celles d'un cerisier de taille normale égayeront les papilles des gourmands ! Le Prunus cerasus van requiert peu de soins. Il a besoin d'un sol humide, non argileux et neutre ou très légèrement calcaire. Il peut être planté en sol, dans un trou de 70 centimètres dans tous les sens ou en pot.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 5,
plantation_months: ["Février", "March", "April", "May", "October", "November", "December"],
harvest_months:["june"],
min_temp: -10,
max_temp: 35,
spacing_in_cm: 50,
)
file = URI.open("http://grandpotager.ca/wp-content/uploads/2020/02/fruits-cherry-bush-crimson-passion-1.jpg")
plant.photo.attach(io: file, filename: "cerisier.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Mûrier Cascade",
category: "fruits", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Variété remarquable pour son port compact et retombant et surtout pour ses fruits savoureux (jusqu'à 370 g par pied). Plantez-la en suspension ou dans un grand pot pour déguster vos propres mûres chaque été sur la terrasse ou le balcon. Apprécie un sol riche en terreau et des arrosages réguliers en saison mais se montre par ailleurs très facile à cultiver.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 5,
plantation_months: ["Février", "March", "April", "May", "October", "November", "December"],
harvest_months:["june", "july", "september"],
min_temp: -5,
max_temp: 35,
spacing_in_cm: 40,
)
file = URI.open("https://www.remedes-de-grand-mere.com/wp-content/uploads/2018/10/Murier-noir-Morus-Nigra.jpg")
plant.photo.attach(io: file, filename: "murier.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Tomates cerises",
category: "fruits", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "La tomate cerise est l’un des fruits/légumes, les plus faciles à cultiver car elles poussent rapidement. Elle se cultive aussi bien en terre que en pot sur balcon ou terrasse et peut être récoltée tout au long de l’été.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "important", #['peu', 'moyen ', 'important']
water_frequency_in_days: 2,
plantation_months: ["March", "April", "May"],
harvest_months:["june", "july", "september"],
min_temp: 8,
max_temp: 45,
spacing_in_cm: 60,
)
file = URI.open("https://media.ooreka.fr/public/image/plant/266/mainImage-full-11530300.jpg")
plant.photo.attach(io: file, filename: "tomate_cerise.jpg", content_type: "image/jpg")
plant.save!

## Arbustes

plant = Plant.new(
name: "Azalée du Japon",
category: "arbuste", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "L'AZALEA japonica ou AZALEE DU JAPON rouge est un arbuste persistant, d'une hauteur adulte de 1 m, à la floraison rouge en avril-mai. Végétation basse et étalée. Il lui faut un sol léger, frais et acide, non calcaire sous exposition mi-ombre. Une situation au Nord lui convient bien. L'AZALEA japonica rouge est à planter en association avec d'autres plantes de terre de bruyère.",
luminosity: "ombre", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 5,
plantation_months: ["Février", "March", "April", "May", "June", "October", "November", "December"],
harvest_months:["March", "April", "May"],
min_temp: -10,
max_temp: 35,
spacing_in_cm: 50,
)
file = URI.open("https://www.pepinieres-huchet.com/media/azalee_jap_rouge_kazuko_int__085290900_1532_06012014.jpg")
plant.photo.attach(io: file, filename: "azalee.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Pin Marie",
category: "arbuste", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Le pin nain Marie Bregeon est un petit conifère à croissance basse et au port sphérique. Il pousse en prenant une jolie forme plus ronde et plus pleine que les autres cultivars de pins. Ses aiguilles sont vert clair et mesurent de 3 à 6 cm de long. De croissance lente, il est adapté à la plantation en conteneur et conserve sa forme sphérique sans être taillé. De forme régulière, le pin nain Marie Bregeon se présente comme un vrai petit bonsaï. D’entretien facile (pour ne pas dire négligeable), il pousse de 5 à 9 cm par an. ",
luminosity: "ombre", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "peu", #['peu', 'moyen ', 'important']
water_frequency_in_days: 15,
plantation_months: ["March", "April", "May", "June", "July", "August", "September", "October", "November", "December", "January", "Février"],
harvest_months:[],
min_temp: -10,
max_temp: 35,
spacing_in_cm: 50,
)
file = URI.open("https://www.mesarbustes.fr/138124-home_default/pinus-nigra-marie-bregeon-r-pin-nain-boule.jpg")
plant.photo.attach(io: file, filename: "pin.jpg", content_type: "image/jpg")
plant.save!

plant = Plant.new(
name: "Hibiscus de jardin",
category: "arbuste", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Ces arbustes sur tige sont peu encombrants (d'une hauteur de 1,50 m à 1,80 m). Au sommet de la tige, le feuillage forme une véritable boule de 50 centimètres de diamètre environ, ponctué par ses jolies fleurs. Faciles à vivre grâce à un entretien simple, les hibiscus sur tige sont très rustiques : ils résistent au froid et au gel et peuvent résister sans difficulté à des températures négatives jusqu’à -15°C. Il ne sera donc pas nécessaire de les protéger en hiver pour affronter le froid. Comme la majorité des hibiscus, ils apprécient une exposition ensoleillée pour bien fleurir. Une culture à la mi-ombre est possible, mais la floraison sera moins présente.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "peu", #['peu', 'moyen ', 'important']
water_frequency_in_days: 15,
plantation_months: ["March", "April", "May", "September", "October", "November", "December"],
harvest_months:[],
min_temp: -15,
max_temp: 40,
spacing_in_cm: 40,
)
file = URI.open("https://www.willemsefrance.fr/Files/126284/Img/11/007416-Collection-de-2-Hibiscus-de-jardin-sur-tige_2x800.jpg")
plant.photo.attach(io: file, filename: "hibiscus.jpg", content_type: "image/jpg")
plant.save!


plant = Plant.new(
name: "Glycine blanche",
category: "arbuste", #['Comestible', 'Vivace', 'Fruits', 'Arbuste']
description: "Ces arbustes sur tige sont peu encombrants (d'une hauteur de 1,50 m à 1,80 m). Forme très originale pour cette glycine qui vous offrira, chaque printemps, un superbe spectacle. Retombantes, ses nombreuses grappes de fleurs blanches et parfumées formeront une véritable cascade d'une grande élégance. Culture facile dans tout bon sol ou en pot. Prévoir un tuteur.",
luminosity: "ensoleillé", #['ombre', 'peu ensoleillé', 'ensoleillé']
water_need: "moyen", #['peu', 'moyen ', 'important']
water_frequency_in_days: 10,
plantation_months: ["March", "April", "May", "June", "September", "October", "November", "December"],
harvest_months:[],
min_temp: 0,
max_temp: 40,
spacing_in_cm: 40,
)
file = URI.open("https://p0.storage.canalblog.com/02/08/849301/102194017_o.jpg")
plant.photo.attach(io: file, filename: "Glycine.jpg", content_type: "image/jpg")
plant.save!