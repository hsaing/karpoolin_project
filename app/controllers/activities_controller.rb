class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    if @activity.save
      redirect_to activities_path
    else
      redirect_to :back, :flash => {:state => 'register', :errors => @activity.errors.full_messages } 
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    puts params
    @activity = Activity.update(params[:id], activity_params)
    redirect_to activities_path
  end

  def destroy
    Activity.find(params[:id]).destroy
    redirect_to activities_path
  end
  
  private 

  def activity_params
    params.require(:activity).permit(:activity_name, :activity_start_date,:activity_end_date,
    :activity_start_time,:activity_end_time,:address_street,:address_city,:address_zipcode,
    :address_state,:phone_number)   
  end

end
