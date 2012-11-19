class Grade < ActiveRecord::Base
  attr_accessible :descr_classe
  
  has_many :people, :through => :mateship
  has_many :matters, :through => :learnship
  
  has_many :calendars
  has_many :weekly_prospects
  
end
