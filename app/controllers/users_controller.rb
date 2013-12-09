class UsersController < ApplicationController

	:authenticate_user!
	:is_a_doctor!

	def doctor_dashboard
		@user = current_user
	end

end
