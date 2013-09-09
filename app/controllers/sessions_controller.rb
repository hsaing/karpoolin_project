class SessionsController < ApplicationController
  
  # def create
  # 		parent = parent.find_by(email: params[:parent][:email]).try(:authenticate, params[:parent][:password])
	 #  	if parent == false || parent.nil?
	 #  		redirect_to new_parent_path, :flash => { :error => 'Email and password don\'t match.' }
	 #  	else
	 #  		sign_in parent
		# 		redirect_to students_path
	 #  	end
  # end

  # def destroy
  # 	sign_out
  # 	redirect_to root_path
  # end

  # def parent_params
  #   params.require(:parent).permit(:first_name, :last_name, :email, :password_digest,:address_street,:address_city,:address_zipcode,
  #   :address_state,:phone_home, :phone_mobile)
  # end 
end
