class TimeframesController < ApplicationController
  def index
    @timeframes = Timeframe.all
  end

  def show
    @timeframe = Timeframe.find(params[:id])
  end

  def new
    @timeframe = Timeframe.new
  end

  def create
    @timeframe = Timeframe.new(params[:timeframe])
    if @timeframe.save
      redirect_to @timeframe, :notice => "Successfully created timeframe."
    else
      render :action => 'new'
    end
  end

  def edit
    @timeframe = Timeframe.find(params[:id])
  end

  def update
    @timeframe = Timeframe.find(params[:id])
    if @timeframe.update_attributes(params[:timeframe])
      redirect_to @timeframe, :notice  => "Successfully updated timeframe."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @timeframe = Timeframe.find(params[:id])
    @timeframe.destroy
    redirect_to timeframes_url, :notice => "Successfully destroyed timeframe."
  end
end
