# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Destination.create(dest_name: 'Kishinev', region: 'Unicornia', country: 'Moldova', img_path: '/assets/images/kishinev.jpg')

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'destinations.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Destination.new
  t.dest_name = row['dest_name']
  t.region = row['region']
  t.country = row['country']
  t.img_path = row['img_path']
  t.save
end
