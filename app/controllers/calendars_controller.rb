class CalendarsController < ApplicationController

  before_filter :setup, :only => [:edit, :new, :create]

  def setup
      @almanac = Almanac.current(Date.today).first
      @calendars = Calendar.where(:almanac_id => @almanac.id)
      @days = Day.working_days
      @timeframes = Timeframe.all
      @wps = WeeklyProspect.all
      @grades = Grade.all
      @matters = Matter.all
  end

  def index
    @calendars = Calendar.all
  end

  def show
    @calendar = Calendar.find(params[:id])
  end

  def new
    @calendar = Calendar.new :almanac_id => @almanac.id, :prospect_structure_id => 0

    respond_to do |format|
      format.html
      format.js 
    end
  end

  def create
    @calendar = Calendar.new(params[:calendar])
    if @calendar.save
      respond_to do |format|
        format.html {redirect_to @weekly_prospect, :notice => "Successfully created calendar."}
        format.js { redirect_to "http://localhost:3000/timecalendar.js" }
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @calendar = Calendar.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @calendar = Calendar.find(params[:id])
    if @calendar.update_attributes(params[:calendar])
      respond_to do |format|
        format.html {redirect_to @weekly_prospect, :notice => "Successfully created calendar."}
        format.js { redirect_to "http://localhost:3000/timecalendar.js" }
      end
    else
      render :action => 'edit'
    end
  end

  def destroy
    @calendar = Calendar.find(params[:id])
    @calendar.destroy
    redirect_to calendars_url, :notice => "Successfully destroyed calendar."
  end
end
