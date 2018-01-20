# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Company.destroy_all
companies = []
5.times do |i|
  companies << Company.new(
    {
      name: Faker::Company.name,
      url: Faker::Internet.url,
      tel: Faker::Company.australian_business_number,
      fax: Faker::Company.australian_business_number,
      zip_code: '130-0000',
      email: Faker::Internet.safe_email,
      countly_id: 1,
      state_id: 1,
      city_id: 1,
      address: Faker::Address.street_address + Faker::Address.secondary_address,
      created_by: 1,
      updated_by: 1,
    }
  )
end
Company.import companies
companies = Company.all

Shop.destroy_all
shops = []
10.times do |i|
  shops << Shop.new(
    {
      name: Faker::Company.name,
      company_id: companies.sample.id,
      genre_id: 1,
      section_id: 1,
      url: Faker::Internet.url,
      tel: Faker::Company.australian_business_number,
      fax: Faker::Company.australian_business_number,
      zip_code: '130-0000',
      email: Faker::Internet.safe_email,
      countly_id: 1,
      state_id: 1,
      city_id: 1,
      address: Faker::Address.street_address + Faker::Address.secondary_address,
      created_by: 1,
      updated_by: 1,
    }
  )
end
Shop.import shops
shops = Shop.all

User.destroy_all
users = []
4.times do |i|
  users << User.new(
    {
      name: 'アドミン 太郎',
      email: 'test@user.com',
      shop_id: shops.sample.id,
      auth_type: i,
      password: 'test',
      password_confirmation: 'test',
      created_by: 1,
      updated_by: 1,
    }
  )
end
User.import users
