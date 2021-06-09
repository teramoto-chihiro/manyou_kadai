# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
name = "teratera"
email = "tera@tera.com"
password = "teratera"
User.create!(name: name,
             email: email,
             password: password,
             password_confirmation: password,
             admin: true
             )

 9.times do |n|
   name = Faker::Games::Pokemon.name
   email = Faker::Internet.email
   password = "password"
   User.create!(name: name,
                email: email,
                password: password,
                password_confirmation: password,
                admin: false
                )
 end

Label.create!(
[
  {name: 'HTML'},
  {name: 'CSS'},
  {name: 'Javascript'},
  {name: 'Ruby'},
  {name: 'Ruby on Rails'},
  {name: 'Git/GitHub'},
  {name: '課題'},
  {name: 'グループワーク'},
  {name: 'ブレスト'},
  {name: '卒業課題'}
]
)

10.times do |n|
  title = Faker::Games::Pokemon.move
  content = Faker::Games::Pokemon.location
  expired_at = Faker::Date.between(from: '2021-05-27', to: '2021-09-27')
  user_id = n + 1
  Task.create!(title: title,
               content: content,
               deadline: deadline,
               user_id: user_id,
               )
end
