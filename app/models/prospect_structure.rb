class ProspectStructure < ActiveRecord::Base
  attr_accessible :descrizione, :valido
  
  has_many :weekly_prospects
  has_many :calendars
  
end
