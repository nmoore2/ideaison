class ContactsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    # @contact.request = request
    if @contact.save
      # Deliver the signup email
      ContactMailer.send_contact_email(@contact).deliver_now
      redirect_to('/', :notice => 'Thanks for your message, we will be in touch soon.')
    else
      redirect_to('/', :notice => 'Sorry, we did not receive your inquiry, please try that again.')
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def contact_params
     params.require(:contact).permit(:first_name, :last_name, :email, :message)
   end
end
