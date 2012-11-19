class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def show
    @grade = Grade.find(params[:id])
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(params[:grade])
    if @grade.save
      redirect_to @grade, :notice => "Successfully created grade."
    else
      render :action => 'new'
    end
  end

  def edit
    @grade = Grade.find(params[:id])
  end

  def update
    @grade = Grade.find(params[:id])
    if @grade.update_attributes(params[:grade])
      redirect_to @grade, :notice  => "Successfully updated grade."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @grade = Grade.find(params[:id])
    @grade.destroy
    redirect_to grades_url, :notice => "Successfully destroyed grade."
  end
end
