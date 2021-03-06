# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri' # Pour le call API

User.destroy_all
Investee.destroy_all
Investor.destroy_all
Project.destroy_all

investor = User.create!(full_name: 'Investor', email: 'investor@gmail.com', password: 'azerty', category: 'investor')
investor.save!
investor_user = Investor.create!(user_id: investor.id)
investor_user.save!


thomas_tlantenga = User.create!(full_name: 'Thomas_Tlantenga', email: 'thomas_tlantenga@vinted.com', password: 'azerty', category: 'investee')
thomas_tlantenga.photo.attach(io: File.open('app/assets/images/Vinted_logo.png'), filename: "JP2", content_type: "image/png")
thomas_tlantenga.save!
puts "#{thomas_tlantenga.full_name}"
siret = "79182599500024"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_thomas_tlantenga = Investee.create!(user_id: thomas_tlantenga.id, api_data: api, SIRET: siret, nom_entreprise: "Vinted", address: "53 Av. Hoche, 75008 Paris", domaine_activite: "vĂȘtements et accessoires d'occasion", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_thomas_tlantenga = Project.create!(name: "Implantation en US", investee: investee_thomas_tlantenga, industry: "E-commerce", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Implantation en US")

christophe_bonduelle = User.create!(full_name: 'Christophe Bonduelle', email: 'christophe_bonduelle@Bonduelle.com', password: 'azerty', category: 'investee')
christophe_bonduelle.photo.attach(io: File.open('app/assets/images/bonduelle.png'), filename: "JP2", content_type: "image/png")
christophe_bonduelle.save!
puts "#{christophe_bonduelle.full_name}"
siret = "35032648400085"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_christophe_bonduelle = Investee.create!(user_id: christophe_bonduelle.id, api_data: api, SIRET: siret, nom_entreprise: "Bonduelle", address: "53 Av. Hoche, 75008 Paris", domaine_activite: "vĂȘtements et accessoires d'occasion", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_christophe_bonduelle = Project.create!(name: "Implantation en afrique", investee: investee_christophe_bonduelle, industry: "Transformation industrielle", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Implantation en afrique")

elyes_edde = User.create!(full_name: 'Elyes Edde', email: 'elyes_edde@murex.com', password: 'azerty', category: 'investee')
elyes_edde.photo.attach(io: File.open('app/assets/images/Murex_logo.png'), filename: "JP2", content_type: "image/png")
elyes_edde.save!
puts "#{elyes_edde.full_name}"
siret = "33869586900077"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_elyes_edde = Investee.create!(user_id: elyes_edde.id, api_data: api, SIRET: siret, nom_entreprise: "Murex", address: "53 Av. Hoche, 75008 Paris", domaine_activite: "IT finance", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_elyes_edde = Project.create!(name: "Nouveau software pour private equity", investee: investee_elyes_edde, industry: "IT finance", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouveau software pour private equity")

eric_dumont = User.create!(full_name: 'Eric Dumont', email: 'eric_dumont@DGF.com', password: 'azerty', category: 'investee')
eric_dumont.photo.attach(io: File.open('app/assets/images/DGF.png'), filename: "JP2", content_type: "image/png")
eric_dumont.save!
puts "#{eric_dumont.full_name}"
siret = "33995895100073"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_eric_dumont = Investee.create!(user_id: eric_dumont.id, api_data: api, SIRET: siret, nom_entreprise: "DGF", address: "53 Av. Hoche, 75008 Paris", domaine_activite: "Agroalimentaire", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_eric_dumont = Project.create!(name: "DĂ©veloppement de rĂ©seaux de distribution", investee: investee_eric_dumont, industry: "Agroalimentaire", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouveau software pour private equity")

thibaud_hug = User.create!(full_name: ' Thibaud Hug', email: 'thibaud_hug@backmarket.com', password: 'azerty', category: 'investee')
thibaud_hug.photo.attach(io: File.open('app/assets/images/Back_Market.png'), filename: "JP2", content_type: "image/png")
thibaud_hug.save!
puts "#{thibaud_hug.full_name}"
siret = "80404947600042"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_thibaud_hug = Investee.create!(user_id: thibaud_hug.id, api_data: api, SIRET: siret, nom_entreprise: "Back Market", address: "36 bd Charlemagne 75019", domaine_activite: "TĂ©lĂ©phonie", chiffre_affaires: 10000000, taux_croissance_chiffre_affaires: 50, marge_brute: 98700000, taux_marge_brute: 98.6, excedent_brut_exploitation: -1230000, taux_marge_EBITDA: -12.3)
project_thibaud_hug = Project.create!(name: "Deploiement Ă  l'international", investee: investee_thibaud_hug, industry: "TĂ©lĂ©phonie", valuation: 37213402, conversion_rate: 1, coupon: 2, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Se dĂ©ployer en Espagne, Angleterre et Allemagne")

cyril_chiche = User.create!(full_name: 'Cyril Chiche', email: 'cyril_chiche@lydia.com', password: 'azerty', category: 'investee')
cyril_chiche.photo.attach(io: File.open('app/assets/images/Lydia.png'), filename: "JP2", content_type: "image/png")
cyril_chiche.save!
puts "#{cyril_chiche.full_name}"
siret = "53447958900051"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_cyril_chiche = Investee.create!(user_id: cyril_chiche.id, api_data: api, SIRET: siret, nom_entreprise: "Lydia", address: "107 Rue Migret 94509", domaine_activite: "Banque en ligne", chiffre_affaires: 7000000, taux_croissance_chiffre_affaires: 55, marge_brute: 75000000, taux_marge_brute: 67.5, excedent_brut_exploitation: -8000900, taux_marge_EBITDA: -18.4)
project_cyril_chiche = Project.create!(name: "Nouveaux locaux dans Paris", investee: investee_cyril_chiche, industry: "Banque en ligne", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouveaux bureaux dans Paris intramuros")

romain_paillard = User.create!(full_name: 'Romain Paillard', email: 'romain-paillard@wagon.com', password: 'azerty', category: 'investee')
romain_paillard.photo.attach(io: File.open('app/assets/images/Le_Wagon.png'), filename: "JP2", content_type: "image/png")
romain_paillard.save!
puts "#{romain_paillard.full_name}"
siret = "79494991700023"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_romain_paillard = Investee.create!(user_id: romain_paillard.id, api_data: api, SIRET: siret, nom_entreprise: "Le Wagon", address: "16 Villa Gauderet 75011", domaine_activite: "Formation continue", chiffre_affaires: 705000, taux_croissance_chiffre_affaires: 7.8, marge_brute: 750000, taux_marge_brute: 10.2, excedent_brut_exploitation: -460000, taux_marge_EBITDA: -32.3)
project_romain_paillard = Project.create!(name: "Nouvelle plateforme e-learning", investee: investee_romain_paillard, industry: "Formation", valuation: 121402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouvelle plateforme E-learning")

jacques_granjon = User.create!(full_name: 'Jacques-Antoine Granjon', email: 'jacques-granjon@veepee.com', password: 'azerty', category: 'investee')
jacques_granjon.photo.attach(io: File.open('app/assets/images/Veepee.png'), filename: "JP2", content_type: "image/png")
jacques_granjon.save!
puts "#{jacques_granjon.full_name}"
siret = "43431729300018"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_jacques_granjon = Investee.create!(user_id: jacques_granjon.id, api_data: api, SIRET: siret, nom_entreprise: "Veepee", address: "249 AV DU PRESIDENT WILSON 93200 SAINT-DENIS", domaine_activite: "E-commerce", chiffre_affaires: 1780000000, taux_croissance_chiffre_affaires: 15.5, marge_brute: 705000000, taux_marge_brute: 11.4, excedent_brut_exploitation: 127000000, taux_marge_EBITDA: 7.1)
project_jacques_granjon = Project.create!(name: "Nouveaux serveurs", investee: investee_jacques_granjon, industry: "E-commerce", valuation: 9073402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Creation de nouveaux serveurs")

nicolas_dessaigne = User.create!(full_name: 'Nicolas Dessaigne', email: 'nicolas-dessaigne@algolia.com', password: 'azerty', category: 'investee')
nicolas_dessaigne.photo.attach(io: File.open('app/assets/images/Algolia.png'), filename: "JP2", content_type: "image/png")
nicolas_dessaigne.save!
puts "#{nicolas_dessaigne.full_name}"
siret = "78868085800040"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_nicolas_dessaigne = Investee.create!(user_id: nicolas_dessaigne.id, api_data: api, SIRET: siret, nom_entreprise: "Algolia", address: "55 RUE D'AMSTERDAM 75008 PARIS", domaine_activite: "Deep Tech", chiffre_affaires: 180000000, taux_croissance_chiffre_affaires: 24, marge_brute: 98007874, taux_marge_brute: 100, excedent_brut_exploitation: 1700000000, taux_marge_EBITDA: 18)
project_nicolas_dessaigne = Project.create!(name: "Expansion en Asie", investee: investee_nicolas_dessaigne, industry: "Deep Tech", valuation: 9654302, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Deploiement en Asie")

fabrice_sawegnon = User.create!(full_name: 'Fabrice Sawegnon', email: 'fabrice-sawegnon@voodoo.com', password: 'azerty', category: 'investee')
fabrice_sawegnon.photo.attach(io: File.open('app/assets/images/Voodoo.png'), filename: "JP2", content_type: "image/png")
fabrice_sawegnon.save!
puts "#{fabrice_sawegnon.full_name}"
siret = "79248330700064"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_fabrice_sawegnon = Investee.create!(user_id: fabrice_sawegnon.id, api_data: api, SIRET: siret, nom_entreprise: "Voodoo", address: "	17 RUE HENRY MONNIER 75009 PARIS", domaine_activite: "Edition de Jeux Videos", chiffre_affaires: 1130000, taux_croissance_chiffre_affaires: 25, marge_brute: 1130000, taux_marge_brute: 100, excedent_brut_exploitation: -498000, taux_marge_EBITDA: -44.1)
project_fabrice_sawegnon = Project.create!(name: "New open-world game", investee: investee_fabrice_sawegnon, industry: "Jeux Videos", valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "New open-world medieval game")

guillaume_lacroix = User.create!(full_name: 'Guillaume Lacroix', email: 'guillaume_lacroix@brut.com', password: 'azerty', category: 'investee')
guillaume_lacroix.photo.attach(io: File.open('app/assets/images/brut.png'), filename: "JP2", content_type: "image/png")
guillaume_lacroix.save!
puts "#{guillaume_lacroix.full_name}"
siret = "82916239500026"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_guillaume_lacroix = Investee.create!(user_id: guillaume_lacroix.id, api_data: api, SIRET: siret, nom_entreprise: "Brut", address: "	17 RUE HENRY MONNIER 75009 PARIS", domaine_activite: "MĂ©dia en ligne", chiffre_affaires: 1130000, taux_croissance_chiffre_affaires: 25, marge_brute: 1130000, taux_marge_brute: 100, excedent_brut_exploitation: -498000, taux_marge_EBITDA: -44.1)
project_guillaume_lacroix = Project.create!(name: "Plan de recrutement", investee: investee_guillaume_lacroix, industry: "MĂ©dia en ligne", valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Plan de recrutement")

michel_saint_jean = User.create!(full_name: 'Michel saint-jean', email: 'michel_saint_jean@diphana.com', password: 'azerty', category: 'investee')
michel_saint_jean.photo.attach(io: File.open('app/assets/images/diaphana.png'), filename: "JP2", content_type: "image/png")
michel_saint_jean.save!
puts "#{michel_saint_jean.full_name}"
siret = "35259511000037"
url = "https://api.pappers.fr/v1/entreprise?siret=#{siret}&api_token=0c665a6e4a30a3f1cb26ce756a2bb42eec327381493a9373"
api_serialized = URI.open(url).read
api = JSON.parse(api_serialized)
investee_michel_saint_jean = Investee.create!(user_id: michel_saint_jean.id, api_data: api, SIRET: siret, nom_entreprise: "Diaphana", address: "	17 RUE HENRY MONNIER 75009 PARIS", domaine_activite: "CinĂ©matographie", chiffre_affaires: 1130000, taux_croissance_chiffre_affaires: 25, marge_brute: 1130000, taux_marge_brute: 100, excedent_brut_exploitation: -498000, taux_marge_EBITDA: -44.1)
project_michel_saint_jean = Project.create!(name: "Production de nouveaux films", investee: investee_michel_saint_jean, industry: "cinĂ©matographie", valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Production de nouveaux films")
