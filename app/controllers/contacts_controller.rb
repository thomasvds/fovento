class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    VolunteerMailer.contact_from_site(@contact.name, @contact.email, @contact.message).deliver_later
    redirect_to contacts_path, notice: 'Merci pour le message. La Team Fovento y répondra rapidement.'
  end
end
