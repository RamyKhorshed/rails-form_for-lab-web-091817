class StudentsController < ActionController::Base
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params[:student])
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
    render :show
  end

  def edit
    @student = Student.find(params[:id])
    render :edit
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params[:student])
    redirect_to student_path(@student)
  end
end
