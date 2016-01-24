# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
FlagLayer.create(:template_name => 'tricolour_vertical',
                 :width => 900,
                 :height => 600,
                 :is_base_layer => true)
