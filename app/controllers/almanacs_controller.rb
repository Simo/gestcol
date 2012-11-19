class AlmanacsController < ApplicationController
  def index
    @almanacs = Almanac.all
  end

  def show
    @almanac = Almanac.find(params[:id])
  end

  def new
    @almanac = Almanac.new
  end

  def create
    @almanac = Almanac.new(params[:almanac])
    if @almanac.save
      redirect_to @almanac, :notice => "Successfully created almanac."
    else
      render :action => 'new'
    end
  end

  def edit
    @almanac = Almanac.find(params[:id])
  end

  def update
    @almanac = Almanac.find(params[:id])
    if @almanac.update_attributes(params[:almanac])
      redirect_to @almanac, :notice  => "Successfully updated almanac."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @almanac = Almanac.find(params[:id])
    @almanac.destroy
    redirect_to almanacs_url, :notice => "Successfully destroyed almanac."
  end
end
