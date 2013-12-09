class StaticPagesController < ApplicationController

	def home
	end

	def enroll_beta
		email = params["email"]
		ip = request.remote_ip
		@beta = Beta.create(email: email, ip: ip)
		respond_to do |format|
			format.js
		end
	end

end
