class SchoolClassesController < ApplicationController

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@schoolclass)
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
    render :show
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
    render :edit
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(params[:school_class])
    redirect_to school_class_path(@schoolclass)
  end

end
