# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Almanac.delete_all
#open("F:\\workspace\\rails\\gescol\\db\\TALMANACCO.txt") do |almanacco|
#  almanacco.read.each_line do |a|
#    n_settimana,month_id,giorno_inizio,giorno_fine,anno = a.chomp.split(";")
#    Almanac.create!( :n_settimana => n_settimana, :month_id => month_id, :giorno_inizio => giorno_inizio, :giorno_fine => giorno_fine, :anno => anno )
#  end
#end

(0..48).each do |i|
  last = Almanac.last
  almanac = Almanac.new
  almanac.inizio_settimana(last)
  almanac.fine_settimana(last)
  almanac.imposta_mese(last)
  almanac.imposta_settimana(last)
  almanac.save!
  puts "inserimento #{i}"
end