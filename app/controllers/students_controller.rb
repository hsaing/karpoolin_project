class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @student.gender = 'M'
  end

  def create
  @student = Student.new(student_params)

    if @student.save
      redirect_to students_path, :flash => { :notice => 'Student successfully saved.'}
    else
      redirect_to :back, :flash => { :state => 'register', :errors => @student.errors.full_messages } 
    end

  end

  def edit
    puts params
    @student = Student.find(params[:id])
  end

  def update
    puts params
    @student = Student.update(params[:id], student_params)
    redirect_to students_path
  end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to students_path
  end
  
  private 
  def student_params
  params.require(:student).permit(:first_name, :last_name,:email,
  :gender,:birth_date,:home_school_name, :school_address_street,
  :school_address_city,:school_address_zipcode,:school_address_state,:school_phone_number,:parent_id)   
end

end

