class RegistrationController < Devise::RegistrationsController

  def create
    super
    resource.role = "doctor"
    resource.save!
  end

end