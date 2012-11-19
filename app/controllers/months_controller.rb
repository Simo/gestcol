class MonthsController < ApplicationController
  def index
    @months = Month.all
  end

  def show
    @month = Month.find(params[:id])
  end

  def new
    @month = Month.new
  end

  def create
    @month = Month.new(params[:month])
    if @month.save
      redirect_to @month, :notice => "Successfully created month."
    else
      render :action => 'new'
    end
  end

  def edit
    @month = Month.find(params[:id])
  end

  def update
    @month = Month.find(params[:id])
    if @month.update_attributes(params[:month])
      redirect_to @month, :notice  => "Successfully updated month."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @month = Month.find(params[:id])
    @month.destroy
    redirect_to months_url, :notice => "Successfully destroyed month."
  end
end
