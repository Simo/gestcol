class Month < ActiveRecord::Base
  attr_accessible :mese
  
  has_many :almanacs
  
end
