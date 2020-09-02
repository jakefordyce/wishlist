# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'jfordyce@covermymeds.com', username: 'jfordyce', password: 'testing123')

List.create(name: 'Test List 1', user_id: 1)

Item.create(name: 'A cool pen', list_id: 1, url: 'https://www.gouletpens.com/collections/flex-soft-nib-pens/products/noodlers-triple-tail-flex-fountain-pen-clear?variant=30284462850091')
