class ApplicationController < ActionController::Base
  protect_from_forgery

  def is_a_doctor!
  	if current_user
  		unless current_user.role == "doctor"
  			redirect_to root_path
  		end
  	else
  		redirect_to root_path
  	end
  end

  def after_sign_in_path_for(user)
	doctor_dashboard_path
  end

end
