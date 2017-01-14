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

AdminUser.destroy_all


AdminUser.create!(email: 'trini.swinburn@gmail.com', password: '12345678', password_confirmation: '12345678')


House.destroy_all
Region.destroy_all
HouseSize.destroy_all
Company.destroy_all
User.destroy_all
HouseValue.destroy_all
HouseBuild.destroy_all


users = User.create!(
	[
		{ name: 'usuario1', email: "usuario1@gmail.com", password: "12345678", phone: "12345678" },
		{ name: 'usuario2', email: "usuario2@gmail.com", password: "12345678", phone: "12345678" },
		{ name: 'usuario3', email: "usuario3@gmail.com", password: "12345678", phone: "12345678" }
	]
)


companies = Company.create!(
	[
		{ name: 'company1', email: 'company1@gmail.com', address: 'direccion company 1', phone: '+562 2233 4452', photo: 'foto company 1', user: users.first }, 
		{ name: 'company2', email: 'company2@gmail.com', address: 'direccion company 2', phone: '+562 1245 4452', photo: 'foto company 2', user: users.first },
		{ name: 'company3', email: 'company3@gmail.com', address: 'direccion company 3', phone: '+562 2233 7443', photo: 'foto company 3', user: users.first },
		{ name: 'company4', email: 'company4@gmail.com', address: 'direccion company 4', phone: '+562 8374 6652', photo: 'foto company 4', user: users.last }
	]
)


regions = Region.create!(
	[
	    {name: "15. Arica y Parinacota"},
	    {name: "1. Tarapacá"},
	    {name: "2. Antofagasta"},
	    {name: "3. Atacama"},
	    {name: "4. Coquimbo"},
	    {name: "5. Valparaíso"},
	    {name: "13. Metropolitana de Santiago"},
	    {name: "6. O'Higgins"},
	    {name: "7. Maule"},
	    {name: "8. Bío-Bío"},
	    {name: "9. La Araucanía"},
	    {name: "14. Los Ríos"},
	    {name: "10. Los Lagos"},
	    {name: "11. Aysén"},
   		{name: "12. Magallanes"}
	]
)


housesize = HouseSize.create!(
	[
		{from: 1, to: 25, name: "Hasta 25 mts2"},
		{from: 26, to: 40, name: "26 a 40 mts2"},
		{from: 41, to: 60, name: "41 a 60 mts2"},
		{from: 61, to: 80, name: "61 a 80 mts2"},
		{from: 81, to: 100, name: "81 a 100 mts2"},
		{from: 101, to: 200, name: "Más de 100 mts2"},
	]
)


housebuild = HouseBuild.create!(
	[
		{name: "Si"},
		{name: "No"}
	]
)


housevalue = HouseValue.create!(
	[
		{from: 1, to: 400, name: "Hasta UF 400"},
		{from: 401, to: 600, name: "Entre UF 401 y UF 600"},
		{from: 601, to: 800, name: "Entre UF 601 y UF 800"},
		{from: 801, to: 1000, name: "Entre UF 801 y UF 1.000"},
		{from: 1001, to: 2000, name: "Entre UF 1.001 y UF 2.000"},
		{from: 2001, to: 4000, name: "Más de UF 2.000"},
	]
)

houses = House.create!(
	[
		{name: "casa1", mts: "24mt2", user: users.first, company: companies.first, region: regions.first },
		{name: "casa2", mts: "30mt2", user: users.first, company: companies.first, region: regions.first },
		{name: "casa3", mts: "50mt2", user: users.first, company: companies.first, region: regions.last },
	]
)

