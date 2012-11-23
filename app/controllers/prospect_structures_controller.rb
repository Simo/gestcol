class ProspectStructuresController < ApplicationController
  
  before_filter :setup, :only => [:show, :timetable]
    
  def setup
    @timeframes = Timeframe.all
    @days = Day.working_days
    @wps = WeeklyProspect.all
    @grades = Grade.all
  end
  
  def index
    @prospect_structures = ProspectStructure.all
  end

  def show
    @prospect_structure = ProspectStructure.find(params[:id])
  end
  
  def timetable
    @prospect_structure = ProspectStructure.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
    
  end

  def new
    @prospect_structure = ProspectStructure.new
  end

  def create
    @prospect_structure = ProspectStructure.new(params[:prospect_structure])
    if @prospect_structure.save
      redirect_to @prospect_structure, :notice => "Successfully created prospect structure."
    else
      render :action => 'new'
    end
  end

  def edit
    @prospect_structure = ProspectStructure.find(params[:id])
  end

  def update
    @prospect_structure = ProspectStructure.find(params[:id])
    if @prospect_structure.update_attributes(params[:prospect_structure])
      redirect_to @prospect_structure, :notice  => "Successfully updated prospect structure."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @prospect_structure = ProspectStructure.find(params[:id])
    @prospect_structure.destroy
    redirect_to prospect_structures_url, :notice => "Successfully destroyed prospect structure."
  end
end
