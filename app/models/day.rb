class Day < ActiveRecord::Base
  attr_accessible :giornata, :prt
  
  has_many :calendars
  has_many :weekly_prospects
  
  def self.working_days
    Day.where("prt < ?", 6)
  end
  
end
