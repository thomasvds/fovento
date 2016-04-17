class NonprofitProfilesController < ApplicationController
  before_action :set_nonprofit_profile, only: [:edit, :update]
  before_action :authenticate_volunteer!

  def new
    @nonprofit_profile = NonprofitProfile.new
  end

  def create
    @nonprofit_profile = NonprofitProfile.new(nonprofit_profile_params)

    respond_to do |format|
      if @nonprofit_profile.save
        format.html { redirect_to dashboard_path, notice: "Association enregistrée." }
      else
        format.html { redirect_to dashboard_path, alert: "Association non enregistrée."}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @nonprofit_profile.update(nonprofit_profile_params)
        format.html { redirect_to dashboard_path, notice: "Profil d'association mis à jour." }
      else
        format.html { redirect_to dashboard_path, alert: 'Erreur: le profil n\'a pas été mis à jour.'}
      end
    end
  end

  private

  def set_nonprofit_profile
    @nonprofit_profile = NonprofitProfile.find(params[:id])
  end

  def nonprofit_profile_params
    params.require(:nonprofit_profile).permit(
      :sector,
      :website,
      :email,
      :address,
      :map_frame,
      :description,
      :neighbourhood,
      :phone_number,
      :logo,
      :name
    )
  end
end
