class CarpoolersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @carpooler= Carpooler.new
    @activities = Activity.all
    @students = Student.all
    @parents = Parent.all
  end

  def create
    logger.debug { @params.inspect }
    @carpooler = Activity.find(params[:activity_id]).carpoolers.new(carpooler_params)
    if @carpooler.save
      redirect_to carpoolers_path, :flash => { :notice => 'Carpooler successfully saved.'}
    else
      redirect_to :back, :flash => { :state => 'register', :errors => @carpooler.errors.full_messages } 
    end
  end

  def destroy
  end

  private
  def carpooler_params
    params.require(:carpooler).permit(:parent_id, :activity_id, :student_id,:need_ride,:notes,:can_drive_up,:can_drive_return)
  end
end
