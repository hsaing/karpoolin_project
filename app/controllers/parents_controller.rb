class ParentsController < ApplicationController
  def index
    @parents = Parent.all
  end

  def show
    @parent = Parent.find(params[:id])
  end

  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.new(parent_params)

    if @parent.save
      # sign_in @parent
      redirect_to parents_path
    else
      redirect_to :back, :flash => { :state => 'register', :errors => @parent.errors.full_messages } 
    end
  end

  def edit
    # puts params
    @parent = Parent.find(params[:id])
  end

  def update
    # puts params
    @parent = Parent.update(params[:id], parent_params)
    redirect_to parents_path
  end

  def destroy
    Parent.find(params[:id]).destroy
    redirect_to parents_path
  end

 private
  def parent_params
    params.require(:parent).permit(:first_name, :last_name, :email, :password,:password_confirmation,:address_street,:address_city,:address_zipcode,
    :address_state,:phone_home, :phone_mobile)
  end 
end
