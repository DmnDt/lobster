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

steve_jobs = User.create!(full_name: 'Steve Jobs', email: 'steve-jobs@apple.com', password: 'azerty', category: 'investee')
steve_jobs.photo.attach(io: File.open('app/assets/images/Apple.png'), filename: "JP2", content_type: "image/png")
steve_jobs.save!
puts "#{steve_jobs.full_name}"

elon_musk = User.create!(full_name: 'Elon Musk', email: 'elon-musk@tesla.com', password: 'azerty', category: 'investee')
elon_musk.photo.attach(io: File.open('app/assets/images/Tesla.png'), filename: "JP2", content_type: "image/png")
elon_musk.save!
puts "#{elon_musk.full_name}"


investee_steve_jobs = Investee.create!(user_id: steve_jobs.id, SIRET: "60482993688834", company_name: "Apple", NAF: "6820B", address: "837 Lake Forest Ave. San Pedro, CA 90731", activity: "Informatique", president: "Tim Cook", managing_director: "Jeff Williams", shares: 166876, table_cap: "The Vanguard Group, Inc.: 7%; Berkshire Hathaway, Inc. (Investment Management): 5,32%; SSgA Funds Management, Inc.: 3,73%; Capital Research & Management Co.: 2,27%; BlackRock Fund Advisors: 2,17%", turnover_n_2: 556800, turnover_n_1: 579759, turnover_n: 596800, growth_n_2_n_1: "3,3%", growth_n_1_n: "3,5%")
investee_elon_musk = Investee.create!(user_id: elon_musk.id, SIRET: "12824369313712", company_name: "Tesla", NAF: "9087Y", address: "969 Wentworth Ave. Antioch, CA 94509", activity: "Automobile", president: "Elon Musk", managing_director: "Jerome Guillen", shares: 9900, table_cap: "Elon Musk: 17,7%; The Vanguard Group, Inc.: 5,73%; Capital Research & Management Co. (World Investors): 4,25%; SSgA Funds Management, Inc.: 3,06%; BlackRock Fund Advisors: 1,80%; Larry Ellison: 1,56%", turnover_n_2: 155409, turnover_n_1: 178784, turnover_n: 198806, growth_n_2_n_1: "13,3%", growth_n_1_n: "11,6%")

investor_user = Investor.create!(user_id: investor.id)
investor_user.save!

project_steve_jobs = Project.create!(name: "New offices", investee: investee_steve_jobs, industry: "Informatique", valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Buy offices in Texas")
project_elon_musk = Project.create!(name: "AI is coming to Tesla", investee: investee_elon_musk, industry: "Automobile", valuation: 1234012, conversion_rate: 2, coupon: 5, conversion_date: "2022/4/9", status: 0, total_amount: 35000, financing_thesis: "IA department foundation")

document1 = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1630057146/Balance_Sheet_ek8qmu.pdf")
project_steve_jobs.documents.attach(io: document1, filename: 'Bilan.pdf', content_type: 'application/pdf')
document2 = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1630057164/Financials_x34qf5.pdf")
project_steve_jobs.documents.attach(io: document2, filename: 'compte de résultat.pdf', content_type: 'application/pdf')
project_steve_jobs.save!


document3 = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1630057146/Balance_Sheet_ek8qmu.pdf")
document4 = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1630057164/Financials_x34qf5.pdf")
project_elon_musk.documents.attach(io: document3, filename: 'Bilan.pdf', content_type: 'application/pdf')
project_elon_musk.documents.attach(io: document4, filename: 'compte de résultat.pdf', content_type: 'application/pdf')
project_elon_musk.save!

# stevejobsphoto = https://res.cloudinary.com/dgkikk5i4/image/upload/v1629811189/apple-steve-jobs-big1-1280x720_hdfvpw.jpg
# elonmuskphoto = https://res.cloudinary.com/dgkikk5i4/image/upload/v1629811194/Elon_Musk_Royal_Society_mk09mp.jpg

thibaud_hug = User.create!(full_name: ' Thibaud Hug', email: 'thibaud_hug@backmarket.com', password: 'azerty', category: 'investee')
thibaud_hug.photo.attach(io: File.open('app/assets/images/Back_Market.png'), filename: "JP2", content_type: "image/png")
thibaud_hug.save!
puts "#{thibaud_hug.full_name}"
investee_thibaud_hug = Investee.create!(user_id: thibaud_hug.id, SIRET: "435563688834", company_name: "Back Market", NAF: "6880B", address: "36 bd Charlemagne 75019", activity: "Téléphonie", president: "Thibaud Hug", managing_director: "Jean Semis", shares: 19876, table_cap: "The Vanguard Group, Inc.: 7%; Berkshire Hathaway, Inc. (Investment Management): 5,32%; SSgA Funds Management, Inc.: 3,73%; Capital Research & Management Co.: 2,27%; BlackRock Fund Advisors: 2,17%", turnover_n_2: 556800, turnover_n_1: 579759, turnover_n: 596800, growth_n_2_n_1: "3,3%", growth_n_1_n: "3,5%")
project_thibaud_hug = Project.create!(name: "Deploiement à l'international", investee: investee_thibaud_hug, industry: "Téléphonie", valuation: 37213402, conversion_rate: 1, coupon: 2, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Se déployer en Espagne, Angleterre et Allemagne")

cyril_chiche = User.create!(full_name: 'Cyril Chiche', email: 'cyril_chiche@lydia.com', password: 'azerty', category: 'investee')
cyril_chiche.photo.attach(io: File.open('app/assets/images/Lydia.png'), filename: "JP2", content_type: "image/png")
cyril_chiche.save!
puts "#{cyril_chiche.full_name}"
investee_cyril_chiche = Investee.create!(user_id: cyril_chiche.id, SIRET: "980769313712", company_name: "Lydia", NAF: "1087P", address: "107 Rue Migret 94509", activity: "Banque en ligne", president: "Cyril Chiche", managing_director: "Antoine Porte", shares: 1560, table_cap: "Cyril Chiche: 17,7%; The Vanguard Group, Inc.: 5,73%; Capital Research & Management Co. (World Investors): 4,25%; SSgA Funds Management, Inc.: 3,06%; BlackRock Fund Advisors: 1,80%; Larry Ellison: 1,56%", turnover_n_2: 155409, turnover_n_1: 178784, turnover_n: 198806, growth_n_2_n_1: "13,3%", growth_n_1_n: "11,6%")
project_cyril_chiche = Project.create!(name: "Nouveaux locaux dans Paris", investee: investee_cyril_chiche, industry: "Banque en ligne", valuation: 4213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouveaux bureaux dans Paris intramuros")

romain_paillard = User.create!(full_name: 'Romain Paillard', email: 'romain-paillard@wagon.com', password: 'azerty', category: 'investee')
romain_paillard.photo.attach(io: File.open('app/assets/images/Le_Wagon.png'), filename: "JP2", content_type: "image/png")
romain_paillard.save!
puts "#{romain_paillard.full_name}"
investee_romain_paillard = Investee.create!(user_id: romain_paillard.id, SIRET: "87699313712", company_name: "Le Wagon", NAF: "90876B", address: "16 Villa Gauderet 75011", activity: "Formation continue", president: "Romain Paillard", managing_director: "Boris Paillard", shares: 7700, table_cap: "Paillard brothers: 17,7%; The Vanguard Group, Inc.: 5,73%; Capital Research & Management Co. (World Investors): 4,25%; SSgA Funds Management, Inc.: 3,06%; BlackRock Fund Advisors: 1,80%; Larry Ellison: 1,56%", turnover_n_2: 155409, turnover_n_1: 178784, turnover_n: 198806, growth_n_2_n_1: "13,3%", growth_n_1_n: "11,6%")
project_romain_paillard = Project.create!(name: "Nouvelle plateforme e-learning", investee: investee_romain_paillard, industry: "Formation", valuation: 121402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Nouvelle plateforme E-learning")

jacques_granjon = User.create!(full_name: 'Jacques-Antoine Granjon', email: 'jacques-granjon@veepee.com', password: 'azerty', category: 'investee')
jacques_granjon.photo.attach(io: File.open('app/assets/images/Veepee.png'), filename: "JP2", content_type: "image/png")
jacques_granjon.save!
puts "#{jacques_granjon.full_name}"
investee_jacques_granjon = Investee.create!(user_id: jacques_granjon.id, SIRET: "56749313712", company_name: "Veepee", NAF: "5345F", address: "249 AV DU PRESIDENT WILSON 93200 SAINT-DENIS", activity: "E-commerce", president: "Jacques-Antoine Granjon", managing_director: "Marc Simoncini", shares: 9900, table_cap: "Granjon: 17,7%; The Vanguard Group, Inc.: 5,73%; Capital Research & Management Co. (World Investors): 4,25%; SSgA Funds Management, Inc.: 3,06%; BlackRock Fund Advisors: 1,80%; Larry Ellison: 1,56%", turnover_n_2: 155409, turnover_n_1: 178784, turnover_n: 198806, growth_n_2_n_1: "13,3%", growth_n_1_n: "11,6%")
project_jacques_granjon = Project.create!(name: "Nouveaux serveurs", investee: investee_jacques_granjon, industry: "E-commerce", valuation: 9073402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Creation de nouveaux serveurs")

nicolas_dessaigne = User.create!(full_name: 'Nicolas Dessaigne', email: 'nicolas-dessaigne@algolia.com', password: 'azerty', category: 'investee')
nicolas_dessaigne.photo.attach(io: File.open('app/assets/images/Algolia.png'), filename: "JP2", content_type: "image/png")
nicolas_dessaigne.save!
puts "#{nicolas_dessaigne.full_name}"
investee_nicolas_dessaigne = Investee.create!(user_id: nicolas_dessaigne.id, SIRET: "12824369313712", company_name: "Algolia", NAF: "8734J", address: "55 RUE D'AMSTERDAM 75008 PARIS", activity: "Deep Tech", president: "Nicolas Dessaigne", managing_director: "Bernadette Nixon", shares: 9900, table_cap: "Nicolas Dessaigne: 17,7%; The Vanguard Group, Inc.: 5,73%; Capital Research & Management Co. (World Investors): 4,25%; SSgA Funds Management, Inc.: 3,06%; BlackRock Fund Advisors: 1,80%; Larry Ellison: 1,56%", turnover_n_2: 155409, turnover_n_1: 178784, turnover_n: 198806, growth_n_2_n_1: "13,3%", growth_n_1_n: "11,6%")
project_nicolas_dessaigne = Project.create!(name: "Expension en Asie", investee: investee_nicolas_dessaigne, industry: "Deep Tech", valuation: 9654302, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Deploiement en Asie")

fabrice_sawegnon = User.create!(full_name: 'Fabrice Sawegnon', email: 'fabrice-sawegnon@voodoo.com', password: 'azerty', category: 'investee')
fabrice_sawegnon.photo.attach(io: File.open('app/assets/images/Voodoo.png'), filename: "JP2", content_type: "image/png")
fabrice_sawegnon.save!
puts "#{fabrice_sawegnon.full_name}"
investee_fabrice_sawegnon = Investee.create!(user_id: fabrice_sawegnon.id, SIRET: "79248330700064", company_name: "Voodoo", NAF: "8650I", address: "	17 RUE HENRY MONNIER 75009 PARIS", activity: "Edition de Jeux Videos", president: "Fabrice Sawegnon", managing_director: "Mathias Salanon", shares: 11900, table_cap: "Fabrice Sawegnon: 17,7%; The Vanguard Group, Inc.: 5,73%; Capital Research & Management Co. (World Investors): 4,25%; SSgA Funds Management, Inc.: 3,06%; BlackRock Fund Advisors: 1,80%; Larry Ellison: 1,56%", turnover_n_2: 155409, turnover_n_1: 178784, turnover_n: 198806, growth_n_2_n_1: "13,3%", growth_n_1_n: "11,6%")
project_fabrice_sawegnon = Project.create!(name: "New open-world game", investee: investee_fabrice_sawegnon, industry: "Jeux Videos", valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "New open-world medieval game")
