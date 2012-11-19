class WeeklyProspectsController < ApplicationController
  
  before_filter :setup, :only => [:edit, :new, :create]
  
  def setup
    @prospect_structures = ProspectStructure.all
    @grades = Grade.all
    @matters = Matter.all
    @days = Day.all
    @timeframe = Timeframe.all
  end
  
  def index
    @weekly_prospects = WeeklyProspect.all
  end

  def show
    @weekly_prospect = WeeklyProspect.find(params[:id])
      
    respond_to do |format|
      format.html
      format.js
      format.json { render :json => @weekly_prospect }
      format.xml {render :xml => @weekly_prospect}
    end
    
  end

  def new
    @weekly_prospect = WeeklyProspect.new
    
    respond_to do |format|
      format.html
      format.js 
    end
    
  end

  def create
    @weekly_prospect = WeeklyProspect.new(params[:weekly_prospect])
      
    if @weekly_prospect.save
      respond_to do |format|
        format.html {redirect_to @weekly_prospect, :notice => "Successfully created weekly prospect."}
        format.js { redirect_to "http://localhost:3000/timetable/#{@weekly_prospect.prospect_structure_id}.js" }
      end
    else
      render :action => 'new'
    end
  end

  def edit
    @weekly_prospect = WeeklyProspect.find(params[:id])
    
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @weekly_prospect = WeeklyProspect.find(params[:id])
    if @weekly_prospect.update_attributes(params[:weekly_prospect])
      respond_to do |format|
        format.html {redirect_to @weekly_prospect, :notice => "Successfully created weekly prospect."}
        format.js { redirect_to "http://localhost:3000/timetable/#{@weekly_prospect.prospect_structure_id}.js" }
       end
    else
      render :action => 'edit'
    end
  end

  def destroy
    @weekly_prospect = WeeklyProspect.find(params[:id])
    @weekly_prospect.destroy
    redirect_to weekly_prospects_url, :notice => "Successfully destroyed weekly prospect."
  end
end
