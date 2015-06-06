# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'capture_data.csv'))

csv = CSV.parse(csv_text, :headers => true)

csv.each do |row|
  t = Capture.new
  t.year = row['year']
  t.month = row['month']
  t.firm_name = row['client_name']
  t.captures = row['captures']
  t.tiles = row['tiles']
  t.save
  puts "#{t.year}, #{t.month}, #{t.firm_name}, #{t.captures} #{t.tiles} saved"

end

puts "There are now #{Capture.count} rows in the transactions table"




