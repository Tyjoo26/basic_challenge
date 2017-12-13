class StudentsController < ApplicationController


  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "You've created a new Student"

      redirect_to student_path(@student)
    else
      render :new
    end
  end


  private

  def student_params
    params.require(:student).permit(:name)
  end
end
