
AdminUser.destroy_all

AdminUser.create!(email: 'trini.swinburn@gmail.com', password: '12345678', password_confirmation: '12345678')

House.destroy_all
Region.destroy_all
HouseSize.destroy_all
Company.destroy_all
User.destroy_all
HouseValue.destroy_all
HouseBuild.destroy_all
Seller.destroy_all

users = User.create!(
	[
		{ name: 'usuario1', email: "usuario1@gmail.com", password: "12345678", phone: "12345678" },
		{ name: 'usuario2', email: "usuario2@gmail.com", password: "12345678", phone: "12345678" },
		{ name: 'usuario3', email: "usuario3@gmail.com", password: "12345678", phone: "12345678" }
	]
)

sellers = Seller.create!(
	[
		{ name: 'seller1', email: "seller1@gmail.com", company: companies.first, house: houses.first },
		{ name: 'seller2', email: "seller2@gmail.com", company: companies.first, house: houses.first },
		{ name: 'seller3', email: "seller3@gmail.com", company: companies.last, house: houses.last }
	]
)

companies = Company.create!(
	[
		{ name: 'company1', email: 'company1@gmail.com', address: 'direccion company 1', phone: '5622', photo: 'foto company 1', user: users.first }, 
		{ name: 'company2', email: 'company2@gmail.com', address: 'direccion company 2', phone: '5621', photo: 'foto company 2', user: users.first },
		{ name: 'company3', email: 'company3@gmail.com', address: 'direccion company 3', phone: '5622', photo: 'foto company 3', user: users.first },
		{ name: 'company4', email: 'company4@gmail.com', address: 'direccion company 4', phone: '5628', photo: 'foto company 4', user: users.last }
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
		{name: "CASA ARAUCO", mts: "58mt2", user: users.first, company: companies.first, region: regions.first, description: "Casa modular prefabricada, construida en pino insigne nacional de exportación, cumple con norma europea en altura de paneles a 2,44 mts.
", price: 450 },
		{name: "CASA SAKURA", mts: "74mt2", user: users.first, company: companies.first, region: regions.first, description: "Casa modular prefabricada, construida en pino insigne nacional de exportación, cumple con norma europea en altura de paneles a 2,44 mts.
", price: 650 },
		{name: "CASA YURTA", mts: "84mt2", user: users.first, company: companies.first, region: regions.last, description: "Casa modular prefabricada, construida en pino insigne nacional de exportación, cumple con norma europea en altura de paneles a 2,44 mts.
", price: 850 },
	]
)

quotations = Quotation.create!(
	[
		{subject: "Cotización 1", message: "contenido cotizacion 1", user: users.first, house: houses.first },
		{subject: "Cotización 2", message: "contenido cotizacion 2", user: users.first, house: houses.first },
		{subject: "Cotización 3", message: "contenido cotizacion 3", user: users.last, house: houses.last },
	]
)