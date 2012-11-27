class HomeController < ApplicationController
  
  before_filter :setup, :only => [:index, :timetable]
  
  def setup
      @almanac = Almanac.current(Date.today).first
      @calendars = Calendar.where(:almanac_id => @almanac.id)
      @days = Day.working_days
      @wps = WeeklyProspect.all
      @grades = Grade.all
    end
  
  def index
   
  end
  
  def timetable
    #setup passa già l'oggetto almanac

    respond_to do |format|
      format.html
      format.js
    end
    
  end
end