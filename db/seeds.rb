# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quartieri = [
   {"name"=>"Quartiere 1",          "telephone"=>""},
   {"name"=>"Quartiere 2",          "telephone"=>""},
   {"name"=>"Quartiere 3",          "telephone"=>""},
   {"name"=>"Quartiere 4",          "telephone"=>""},
   {"name"=>"Quartiere 5",          "telephone"=>""},
   {"name"=>"Piazza del coraggio",  "telephone"=>""},
   {"name"=>"118 Cascine vecchie",  "telephone"=>""},
   {"name"=>"118 Cascine nuove",    "telephone"=>""},
   {"name"=>"Ospedale",             "telephone"=>""}
]

quartieri.each do |q|
  unless l = Location.where(name: q["name"]).first
    Location.create(q)
  end
end


