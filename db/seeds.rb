# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pry-byebug'

puts "Destroying existing seeds..."
BusinessUnit.destroy_all
Client.destroy_all

puts "...all seeds destroyed"

puts "Seeding 4 business units..."
BusinessUnit.create!(
  name: "Galileo Services DC",
  erp_code: "12345",
  company_code: "US10",
  management_unit: "South",
  address: "1859 CORCORAN WASHINGTON DC 20002-1625 USA")
BusinessUnit.create!(
  name: "Galileo Services Maryland-Virginia",
  erp_code: "12346",
  company_code: "US20",
  management_unit: "North-East",
  address: "5000 LODESTONE BALTIMORE MD 21206-6826 USA")
BusinessUnit.create!(
  name: "Galileo Philadelphia",
  erp_code: "24561",
  company_code: "US12",
  management_unit: "North-East",
  address: "5233 Torresdale Ave PHILADELPHIA PA 19124 USA")
BusinessUnit.create!(
  name: "Galileo New-Jersey",
  erp_code: "24563",
  company_code: "US20",
  management_unit: "North-East",
  address: "300 S BROAD STREET TRENTON NJ 08608 USA")
puts "...4 business units seeded"

puts "Seeding 4 clients..."
4.times {
  Client.create!(
  name: Faker::Company.name,
  industry: Faker::Company.industry,
  tax_number: Faker::Company.duns_number,
  address: Faker::Address.full_address
)
}
puts "...4 clients seeded"

puts "Seeding client relationships..."
bu_list = BusinessUnit.all
client_list = Client.all
6.times {
  client = client_list.sample
  bu = bu_list.sample
  ClientRelationship.create!(
    business_unit: bu,
    client: client
  ) unless client.business_units.include?(bu)
}
puts "...client relationships seeded..."
