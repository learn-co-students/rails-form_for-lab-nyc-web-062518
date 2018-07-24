class SchoolClassesController < ApplicationController

  def index
    @classes = SchoolClass.all
  end

  def new
    @classes = SchoolClass.new
  end

  def create
    @classes = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@classes)
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def edit
    @class = SchoolClass.find(params[:id])
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@class)
  end

end
