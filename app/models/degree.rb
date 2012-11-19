class Degree < ActiveRecord::Base
  attr_accessible :grado_parentela
  
  has_many :relationship
  
end
