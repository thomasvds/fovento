class VolunteersController < ApplicationController
  def profile
    @volunteer = current_volunteer
  end

  def dashboard
    @volunteer = current_volunteer
  end
end
