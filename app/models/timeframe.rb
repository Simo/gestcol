class Timeframe < ActiveRecord::Base
  attr_accessible :orario, :inizio, :fine
  
  has_many :calendars
  has_many :weekly_structures
  
end
