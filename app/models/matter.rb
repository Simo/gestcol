class Matter < ActiveRecord::Base
  attr_accessible :nome_materia, :compresenza, :giardino, :altri_costi
  
  has_many :people, :through => :teachingship
  has_many :grades, :through => :learnships
  
  has_many :learnships
  has_many :calendars
  has_many :weekly_prospects
  
end
