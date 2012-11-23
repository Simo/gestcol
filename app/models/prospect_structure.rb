class ProspectStructure < ActiveRecord::Base
  attr_accessible :descrizione, :valido
  
  has_many :weekly_prospects
  has_many :calendars
  
  def apply_to_calendar almanacs
    wps = WeeklyProspect.where(:prospect_structure_id => self.id) #it's an array
    almanacs.each do |almanac|
        wps.each do |wp|
          calendar = Calendar.create(:almanac_id => almanac.id, :prospect_structure_id => wp.prospect_structure_id, :day_id => wp.day_id, :timeframe_id => wp.timeframe_id, :grade_id => wp.grade_id, :matter_id => wp.matter_id)
        end
     end #almanacs.each
  end
  
end
