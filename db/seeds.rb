# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CREAR SEEDS PARA:
# company (1)
# company_admin (1)
# company_user (4)
# logged_user (4)
# users
# houses (16)

AdminUser.create!(email: 'trini.swinburn@gmail.com', password: '12345678', password_confirmation: '12345678')


# Company.destroy_all

# category = Company.create(
# 	[
# 		{ name: 'company1', email: 'company1@gmail.com', address: 'direccion company 1', phone: '+562 2233 4452', photo: 'foto company 1', user_id: }, 
# 		{ name: 'company2', email: 'company2@gmail.com', address: 'direccion company 2', phone: '+562 1245 4452', photo: 'foto company 2', user_id },
# 		{ name: 'company3', email: 'company3@gmail.com', address: 'direccion company 3', phone: '+562 2233 7443', photo: 'foto company 3', user_id },
# 		{ name: 'company4', email: 'company4@gmail.com', address: 'direccion company 4', phone: '+562 8374 6652', photo: 'foto company 4', user_id }
# 	]
# )


