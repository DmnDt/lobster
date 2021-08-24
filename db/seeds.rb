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

steve_jobs = User.create!(full_name: 'Steve Jobs', email: 'steve-jobs@apple.com', password: 'azerty', category: 'investee')
photo = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1629811194/Elon_Musk_Royal_Society_mk09mp.jpg")
steve_jobs.photo.attach(io: photo, filename: "JP2", content_type: "image/jpg")
steve_jobs.save!
puts "#{steve_jobs.full_name}"

elon_musk = User.create!(full_name: 'Elon Musk', email: 'elon-musk@tesla.com', password: 'azerty', category: 'investee')
photo = URI.open("https://res.cloudinary.com/dgkikk5i4/image/upload/v1629811189/apple-steve-jobs-big1-1280x720_hdfvpw.jpg")
elon_musk.photo.attach(io: photo, filename: "JP2", content_type: "image/jpg")
elon_musk.save!
puts "#{elon_musk.full_name}"


investee_steve_jobs = Investee.create!(user_id: steve_jobs.id, SIRET: "60482993688834", company_name: "Apple", NAF: "6820B", address: "837 Lake Forest Ave. San Pedro, CA 90731", activity: "Informatique", president: "Tim Cook", managing_director: "Jeff Williams", shares: 166876, table_cap: "The Vanguard Group, Inc.: 7%; Berkshire Hathaway, Inc. (Investment Management): 5,32%; SSgA Funds Management, Inc.: 3,73%; Capital Research & Management Co.: 2,27%; BlackRock Fund Advisors: 2,17%", turnover_n_2: 556800, turnover_n_1: 579759, turnover_n: 596800, growth_n_2_n_1: "3,3%", growth_n_1_n: "3,5%")
investee_elon_musk = Investee.create!(user_id: elon_musk.id, SIRET: "12824369313712", company_name: "Tesla", NAF: "9087Y", address: "969 Wentworth Ave. Antioch, CA 94509", activity: "Automobile", president: "Elon Musk", managing_director: "Jerome Guillen", shares: 9900, table_cap: "Elon Musk: 17,7%; The Vanguard Group, Inc.: 5,73%; Capital Research & Management Co. (World Investors): 4,25%; SSgA Funds Management, Inc.: 3,06%; BlackRock Fund Advisors: 1,80%; Larry Ellison: 1,56%", turnover_n_2: 155409, turnover_n_1: 178784, turnover_n: 198806, growth_n_2_n_1: "13,3%", growth_n_1_n: "11,6%")

project_steve_jobs = Project.create!(investee: investee_steve_jobs, valuation: 2213402, conversion_rate: 1, coupon: 3, conversion_date: "2021/5/4", status: 0, total_amount: 10000, financing_thesis: "Buy offices in Texas")
project_elon_musk = Project.create!(investee: investee_elon_musk, valuation: 1234012, conversion_rate: 2, coupon: 5, conversion_date: "2022/4/9", status: 0, total_amount: 35000, financing_thesis: "IA department foundation")
