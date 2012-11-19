class Almanac < ActiveRecord::Base
  attr_accessible :n_settimana, :month_id, :giorno_inizio, :giorno_fine, :anno
  
  belongs_to :month
  
  has_many :calendars
  
end
