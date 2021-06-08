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
