class ContactsController < ApplicationController
  before_action :set_property
  skip_before_action :verify_authenticity_token

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      render :new
    else
      flash.now[:error] = 'Please correct form errors below.'
      render :new
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_property
    @properties = Property.all
  end
end
