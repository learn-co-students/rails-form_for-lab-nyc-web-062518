class SchoolClassesController < ApplicationController
  def index
    @school_classes = Student.all
  end

  def show
    @school_class = Student.find_by(id: params[:id])
  end

  def new
  end

  def create
    @school_class = Student.create
  end

  def edit
    @school_class = Student.find_by(id: params[:id])
  end

  def update
    @school_class = Student.find_by(id: params[:id])
  end
end
