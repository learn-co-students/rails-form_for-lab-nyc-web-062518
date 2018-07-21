class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find_by(id: params[:id])
  end

  def new
  end

  def create
    @student = Student.create
  end

  def edit
    @student = Student.find_by(id: params[:id])
  end

  def update
    @student = Student.find_by(id: params[:id])
  end
end
