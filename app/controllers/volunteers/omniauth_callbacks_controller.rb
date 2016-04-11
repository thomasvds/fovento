class Volunteers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    @volunteer = Volunteer.from_omniauth(request.env["omniauth.auth"])

    if @volunteer.persisted?
      @volunteer.skip_confirmation!
      sign_in_and_redirect @volunteer, :event => :authentication#this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "LinkedIn") if is_navigational_format?
    else
      session["devise.linkedin_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
