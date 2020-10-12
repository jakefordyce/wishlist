# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'jfordyce@covermymeds.com', username: 'jfordyce', password: 'testing123')

User.create(email: 'jakefordyce78@gmail.com', username: 'jakefordyce78', password: 'testing123')

5.times do |n|
  User.create(email: "test_user#{n}@gmail.com", username: "test_user#{n}", password: 'testing123')
end

List.create(name: 'Test List 1', user_id: 1)

List.create(name: 'Test List 2', user_id: 1)

Collaboration.create(collaborator_id: 3, collab_id: 1)
Collaboration.create(collaborator_id: 4, collab_id: 1)
Collaboration.create(collaborator_id: 5, collab_id: 2)

Item.create(name: 'A cool pen', list_id: 1, url: 'https://www.gouletpens.com/collections/flex-soft-nib-pens/products/noodlers-triple-tail-flex-fountain-pen-clear?variant=30284462850091')

Item.create(name: 'Same cool pen', list_id: 2, url: 'https://www.gouletpens.com/collections/flex-soft-nib-pens/products/noodlers-triple-tail-flex-fountain-pen-clear?variant=30284462850091')

Item.create(name: 'A cool ink', list_id: 1, url: 'https://www.gouletpens.com/collections/bottled-ink/products/noodlers-54th-massachusetts-3oz-bottled-ink?variant=11884740509739')

Comment.create(user_id: 2, list_id: 1, body: "Meh, I've seen better.")
