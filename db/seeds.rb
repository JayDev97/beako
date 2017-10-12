# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Year.destroy_all

Year.create([
    {name: '2019'},
    {name: '2018'},
    {name: '2017'}
    ])

Commodity.destroy_all
Commodity.create([
    {name: 'Alfalfa'}.
    {name: 'Barley'},
    {name: 'Corn'},
    {name: 'Hay'},
    {name: 'Rice'},
    {name: 'Soybeans'},
    {name: 'Wheat'}
    ])

