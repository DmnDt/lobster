# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.destroy_all
Investee.destroy_all
Investor.destroy_all
Project.destroy_all

investor = User.create!(full_name: 'Investor', email: 'investor@gmail.com', password: 'azerty', category: 'investor')
investor.save!

# steve_jobs = User.create!(full_name: 'Steve Jobs', email: 'steve-jobs@apple.com', password: 'azerty', category: 'investee')
# steve_jobs.photo.attach(io: File.open('app/assets/images/Apple.png'), filename: "JP2", content_type: "image/png")
# steve_jobs.save!
# puts "#{steve_jobs.full_name}"

# elon_musk = User.create!(full_name: 'Elon Musk', email: 'elon-musk@tesla.com', password: 'azerty', category: 'investee')
# elon_musk.photo.attach(io: File.open('app/assets/images/Tesla.png'), filename: "JP2", content_type: "image/png")
# elon_musk.save!
# puts "#{elon_musk.full_name}"


# investee_steve_jobs = Investee.create!(user_id: steve_jobs.id, SIRET: "60482993688834", nom_entreprise: "Apple", address: "837 Lake Forest Ave. San Pedro, CA 90731", domaine_activite: "Informatique", chiffre_affaires: 400324, taux_croissance_chiffre_affaires: 1.3, marge_brute: 34000, taux_marge_brute: 33, excedent_brut_exploitation: 45667, taux_marge_EBITDA: 21)
# investee_elon_musk = Investee.create!(user_id: elon_musk.id, SIRET: "12824369313712", nom_entreprise: "Tesla", address: "941 Lake Forest Ave. San Pedro, CA 90731", domaine_activite: "Automobile", chiffre_affaires: 678094, taux_croissance_chiffre_affaires: 1.08, marge_brute: 24500, taux_marge_brute: 19, excedent_brut_exploitation: 50667, taux_marge_EBITDA: 17)

investor_user = Investor.create!(user_id: investor.id)
investor_user.save!

# project_steve_jobs = Project.create!(name: "New offices", investee: investee_steve_jobs, industry: "Informatique", valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Buy offices in Texas")
# project_elon_musk = Project.create!(name: "AI is coming to Tesla", investee: investee_elon_musk, industry: "Automobile", valuation: 1234012, conversion_rate: 2, coupon: 5, conversion_date: "2022/4/9", status: 0, total_amount: 35000, financing_thesis: "IA department foundation")

# document1 = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1630057146/Balance_Sheet_ek8qmu.pdf")
# project_steve_jobs.documents.attach(io: document1, filename: 'Bilan.pdf', content_type: 'application/pdf')
# document2 = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1630057164/Financials_x34qf5.pdf")
# project_steve_jobs.documents.attach(io: document2, filename: 'compte de résultat.pdf', content_type: 'application/pdf')
# project_steve_jobs.save!


# document3 = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1630057146/Balance_Sheet_ek8qmu.pdf")
# document4 = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1630057164/Financials_x34qf5.pdf")
# project_elon_musk.documents.attach(io: document3, filename: 'Bilan.pdf', content_type: 'application/pdf')
# project_elon_musk.documents.attach(io: document4, filename: 'compte de résultat.pdf', content_type: 'application/pdf')
# project_elon_musk.save!

# stevejobsphoto = https://res.cloudinary.com/dgkikk5i4/image/upload/v1629811189/apple-steve-jobs-big1-1280x720_hdfvpw.jpg
# elonmuskphoto = https://res.cloudinary.com/dgkikk5i4/image/upload/v1629811194/Elon_Musk_Royal_Society_mk09mp.jpg

thomas_tlantenga = User.create!(full_name: 'Thomas_Tlantenga', email: 'thomas_tlantenga@vinted.com', password: 'azerty', category: 'investee')
thomas_tlantenga.photo.attach(io: File.open('app/assets/images/Vinted_logo.png'), filename: "JP2", content_type: "image/png")
thomas_tlantenga.save!
puts "#{thomas_tlantenga.full_name}"
investee_thomas_tlantenga = Investee.create!(user_id: thomas_tlantenga.id, SIRET: "79182599500024", nom_entreprise: "Vinted", address: "53 Av. Hoche, 75008 Paris", domaine_activite: "vêtements et accessoires d'occasion", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_thomas_tlantenga = Project.create!(name: "Implantation en US", investee: investee_thomas_tlantenga, industry: "E-commerce", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Implantation en US")

christophe_bonduelle = User.create!(full_name: 'Christophe Bonduelle', email: 'christophe_bonduelle@Bonduelle.com', password: 'azerty', category: 'investee')
christophe_bonduelle.photo.attach(io: File.open('app/assets/images/bonduelle.png'), filename: "JP2", content_type: "image/png")
christophe_bonduelle.save!
puts "#{christophe_bonduelle.full_name}"
investee_christophe_bonduelle = Investee.create!(user_id: christophe_bonduelle.id, SIRET: "79182599500024", nom_entreprise: "Bonduelle", address: "53 Av. Hoche, 75008 Paris", domaine_activite: "vêtements et accessoires d'occasion", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_christophe_bonduelle = Project.create!(name: "Implantation en afrique", investee: investee_christophe_bonduelle, industry: "Transformation industrielle", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Implantation en afrique")

elyes_edde = User.create!(full_name: 'Elyes Edde', email: 'elyes_edde@murex.com', password: 'azerty', category: 'investee')
elyes_edde.photo.attach(io: File.open('app/assets/images/Murex_logo.png'), filename: "JP2", content_type: "image/png")
elyes_edde.save!
puts "#{elyes_edde.full_name}"
investee_elyes_edde = Investee.create!(user_id: elyes_edde.id, SIRET: "79182599500024", nom_entreprise: "Murex", address: "53 Av. Hoche, 75008 Paris", domaine_activite: "IT finance", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_elyes_edde = Project.create!(name: "Nouveau software pour private equity", investee: investee_elyes_edde, industry: "IT finance", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouveau software pour private equity")

eric_dumont = User.create!(full_name: 'Eric Dumont', email: 'eric_dumont@DGF.com', password: 'azerty', category: 'investee')
eric_dumont.photo.attach(io: File.open('app/assets/images/DGF.png'), filename: "JP2", content_type: "image/png")
eric_dumont.save!
puts "#{eric_dumont.full_name}"
investee_eric_dumont = Investee.create!(user_id: eric_dumont.id, SIRET: "79182599500024", nom_entreprise: "DGF", address: "53 Av. Hoche, 75008 Paris", domaine_activite: "Agroalimentaire", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_eric_dumont = Project.create!(name: "Développement de réseaux de distribution", investee: investee_eric_dumont, industry: "Agroalimentaire", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouveau software pour private equity")

thibaud_hug = User.create!(full_name: ' Thibaud Hug', email: 'thibaud_hug@backmarket.com', password: 'azerty', category: 'investee')
thibaud_hug.photo.attach(io: File.open('app/assets/images/Back_Market.png'), filename: "JP2", content_type: "image/png")
thibaud_hug.save!
puts "#{thibaud_hug.full_name}"
investee_thibaud_hug = Investee.create!(user_id: thibaud_hug.id, SIRET: "435563688834", nom_entreprise: "Back Market", address: "36 bd Charlemagne 75019", domaine_activite: "Téléphonie", chiffre_affaires: 10000000, taux_croissance_chiffre_affaires: 50, marge_brute: 98700000, taux_marge_brute: 98.6, excedent_brut_exploitation: -1230000, taux_marge_EBITDA: -12.3)
project_thibaud_hug = Project.create!(name: "Deploiement à l'international", investee: investee_thibaud_hug, industry: "Téléphonie", valuation: 37213402, conversion_rate: 1, coupon: 2, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Se déployer en Espagne, Angleterre et Allemagne")

cyril_chiche = User.create!(full_name: 'Cyril Chiche', email: 'cyril_chiche@lydia.com', password: 'azerty', category: 'investee')
cyril_chiche.photo.attach(io: File.open('app/assets/images/Lydia.png'), filename: "JP2", content_type: "image/png")
cyril_chiche.save!
puts "#{cyril_chiche.full_name}"
investee_cyril_chiche = Investee.create!(user_id: cyril_chiche.id, SIRET: "980769313712", nom_entreprise: "Lydia", address: "107 Rue Migret 94509", domaine_activite: "Banque en ligne", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_cyril_chiche = Project.create!(name: "Nouveaux locaux dans Paris", investee: investee_cyril_chiche, industry: "Banque en ligne", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouveaux bureaux dans Paris intramuros")

romain_paillard = User.create!(full_name: 'Romain Paillard', email: 'romain-paillard@wagon.com', password: 'azerty', category: 'investee')
romain_paillard.photo.attach(io: File.open('app/assets/images/Le_Wagon.png'), filename: "JP2", content_type: "image/png")
romain_paillard.save!
puts "#{romain_paillard.full_name}"
investee_romain_paillard = Investee.create!(user_id: romain_paillard.id, SIRET: "87699313712", nom_entreprise: "Le Wagon", address: "16 Villa Gauderet 75011", domaine_activite: "Formation continue", chiffre_affaires: 705000, taux_croissance_chiffre_affaires: 7.8, marge_brute: 750000, taux_marge_brute: 10.2, excedent_brut_exploitation: -460000, taux_marge_EBITDA: -32.3)
project_romain_paillard = Project.create!(name: "Nouvelle plateforme e-learning", investee: investee_romain_paillard, industry: "Formation", valuation: 121402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouvelle plateforme E-learning")

jacques_granjon = User.create!(full_name: 'Jacques-Antoine Granjon', email: 'jacques-granjon@veepee.com', password: 'azerty', category: 'investee')
jacques_granjon.photo.attach(io: File.open('app/assets/images/Veepee.png'), filename: "JP2", content_type: "image/png")
jacques_granjon.save!
puts "#{jacques_granjon.full_name}"
investee_jacques_granjon = Investee.create!(user_id: jacques_granjon.id, SIRET: "56749313712", nom_entreprise: "Veepee", address: "249 AV DU PRESIDENT WILSON 93200 SAINT-DENIS", domaine_activite: "E-commerce", chiffre_affaires: 1780000000, taux_croissance_chiffre_affaires: 15.5, marge_brute: 705000000, taux_marge_brute: 11.4, excedent_brut_exploitation: 127000000, taux_marge_EBITDA: 7.1)
project_jacques_granjon = Project.create!(name: "Nouveaux serveurs", investee: investee_jacques_granjon, industry: "E-commerce", valuation: 9073402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Creation de nouveaux serveurs")

nicolas_dessaigne = User.create!(full_name: 'Nicolas Dessaigne', email: 'nicolas-dessaigne@algolia.com', password: 'azerty', category: 'investee')
nicolas_dessaigne.photo.attach(io: File.open('app/assets/images/Algolia.png'), filename: "JP2", content_type: "image/png")
nicolas_dessaigne.save!
puts "#{nicolas_dessaigne.full_name}"
investee_nicolas_dessaigne = Investee.create!(user_id: nicolas_dessaigne.id, SIRET: "12824369313712", nom_entreprise: "Algolia", address: "55 RUE D'AMSTERDAM 75008 PARIS", domaine_activite: "Deep Tech", chiffre_affaires: 180000000, taux_croissance_chiffre_affaires: 24, marge_brute: 98007874, taux_marge_brute: 100, excedent_brut_exploitation: 1700000000, taux_marge_EBITDA: 18)
project_nicolas_dessaigne = Project.create!(name: "Expansion en Asie", investee: investee_nicolas_dessaigne, industry: "Deep Tech", valuation: 9654302, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Deploiement en Asie")

fabrice_sawegnon = User.create!(full_name: 'Fabrice Sawegnon', email: 'fabrice-sawegnon@voodoo.com', password: 'azerty', category: 'investee')
fabrice_sawegnon.photo.attach(io: File.open('app/assets/images/Voodoo.png'), filename: "JP2", content_type: "image/png")
fabrice_sawegnon.save!
puts "#{fabrice_sawegnon.full_name}"
investee_fabrice_sawegnon = Investee.create!(user_id: fabrice_sawegnon.id, SIRET: "79248330700064", nom_entreprise: "Voodoo", address: "	17 RUE HENRY MONNIER 75009 PARIS", domaine_activite: "Edition de Jeux Videos", chiffre_affaires: 1130000, taux_croissance_chiffre_affaires: 25, marge_brute: 1130000, taux_marge_brute: 100, excedent_brut_exploitation: -498000, taux_marge_EBITDA: -44.1)
project_fabrice_sawegnon = Project.create!(name: "New open-world game", investee: investee_fabrice_sawegnon, industry: "Jeux Videos", valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "New open-world medieval game")

guillaume_lacroix = User.create!(full_name: 'Guillaume Lacroix', email: 'guillaume_lacroix@brut.com', password: 'azerty', category: 'investee')
guillaume_lacroix.photo.attach(io: File.open('app/assets/images/brut.png'), filename: "JP2", content_type: "image/png")
guillaume_lacroix.save!
puts "#{guillaume_lacroix.full_name}"
investee_guillaume_lacroix = Investee.create!(user_id: guillaume_lacroix.id, SIRET: "79248330700064", nom_entreprise: "Brut", address: "	17 RUE HENRY MONNIER 75009 PARIS", domaine_activite: "Média en ligne", chiffre_affaires: 1130000, taux_croissance_chiffre_affaires: 25, marge_brute: 1130000, taux_marge_brute: 100, excedent_brut_exploitation: -498000, taux_marge_EBITDA: -44.1)
project_guillaume_lacroix = Project.create!(name: "Plan de recrutement", investee: investee_guillaume_lacroix, industry: "Média en ligne", valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Plan de recrutement")

michel_saint_jean = User.create!(full_name: 'Michel saint-jean', email: 'michel_saint_jean@diphana.com', password: 'azerty', category: 'investee')
michel_saint_jean.photo.attach(io: File.open('app/assets/images/diaphana.png'), filename: "JP2", content_type: "image/png")
michel_saint_jean.save!
puts "#{michel_saint_jean.full_name}"
investee_michel_saint_jean = Investee.create!(user_id: michel_saint_jean.id, SIRET: "79248330700064", nom_entreprise: "Diaphana", address: "	17 RUE HENRY MONNIER 75009 PARIS", domaine_activite: "Cinématographie", chiffre_affaires: 1130000, taux_croissance_chiffre_affaires: 25, marge_brute: 1130000, taux_marge_brute: 100, excedent_brut_exploitation: -498000, taux_marge_EBITDA: -44.1)
project_michel_saint_jean = Project.create!(name: "Production de nouveaux films", investee: investee_michel_saint_jean, industry: "cinématographie", valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Production de nouveaux films")
