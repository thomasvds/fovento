class Volunteers::RegistrationsController < Devise::RegistrationsController

  def create
    super do |resource|
      SlackSignupNotifierJob.perform_later(resource)
    end
  end

  private

  def sign_up_params
    params.require(:volunteer).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:volunteer).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

end
