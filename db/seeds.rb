# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

dest_csv_text = File.read(Rails.root.join('lib', 'seeds', 'destinations.csv'))
dest_csv = CSV.parse(dest_csv_text, :headers => true, :encoding => 'ISO-8859-1')
dest_csv.each do |row|
  t = Destination.new
  t.dest_name = row['dest_name']
  t.region = row['region']
  t.country = row['country']
  t.img_path = row['img_path']
  t.save
end

geo_attr_csv_text = File.read(Rails.root.join('lib', 'seeds', 'geo_attr.csv'))
geo_attr_csv = CSV.parse(geo_attr_csv_text, :headers => true, :encoding => 'ISO-8859-1')
geo_attr_csv.each do |row|
  t = GeoAttribute.new
  t.geography = row['geo_attr']
  t.save
end

exp_attr_csv_text = File.read(Rails.root.join('lib', 'seeds', 'exp_attr.csv'))
exp_attr_csv = CSV.parse(exp_attr_csv_text, :headers => true, :encoding => 'ISO-8859-1')
exp_attr_csv.each do |row|
  t = ExpAttribute.new
  t.experience = row['exp_attr']
  t.save
end

lang_attr_csv_text = File.read(Rails.root.join('lib', 'seeds', 'lang_attr.csv'))
lang_attr_csv = CSV.parse(lang_attr_csv_text, :headers => true, :encoding => 'ISO-8859-1')
lang_attr_csv.each do |row|
  t = LangAttribute.new
  t.language = row['lang_attr']
  t.save
end

dest_geo_csv_text = File.read(Rails.root.join('lib', 'seeds', 'dest_geo.csv'))
dest_geo_csv = CSV.parse(dest_geo_csv_text, :headers => true, :encoding => 'ISO-8859-1')
dest_geo_csv.each do |row|
  t = DestinationGeo.new
  t.destination_id = row['id']
  t.geo_attribute_id = row['geo_attr_id']
  t.save
end

dest_exp_csv_text = File.read(Rails.root.join('lib', 'seeds', 'dest_exp.csv'))
dest_exp_csv = CSV.parse(dest_exp_csv_text, :headers => true, :encoding => 'ISO-8859-1')
dest_exp_csv.each do |row|
  t = DestinationExp.new
  t.destination_id = row['id']
  t.exp_attribute_id = row['exp_attr_id']
  t.save
end

dest_lang_csv_text = File.read(Rails.root.join('lib', 'seeds', 'dest_lang.csv'))
dest_lang_csv = CSV.parse(dest_lang_csv_text, :headers => true, :encoding => 'ISO-8859-1')
dest_lang_csv.each do |row|
  t = DestinationLang.new
  t.destination_id = row['id']
  t.lang_attribute_id = row['lang_attr_id']
  t.save
end

Destination.create(dest_name: 'Kishinev', region: 'Unicornia', country: 'Moldova', img_path: '/assets/images/kishinev.jpg')
