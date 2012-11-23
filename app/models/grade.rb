class Grade < ActiveRecord::Base
  attr_accessible :descr_classe
  
  has_many :people, :through => :mateship
  #has_many :matters, :through => :learnship
  has_and_belongs_to_many :matters
  
  has_many :calendars
  has_many :weekly_prospects
  
end
