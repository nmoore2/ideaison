class ContactMailer < ApplicationMailer
  default from: 'info@ideaison.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_contact_email(contact)
    @contact = contact
    @to Rails.env.development? ? 'n@nmoore.net' : 'nate@nmoore.net'
    mail( :from => @contact.email, :to => 'n@nmoore.net',
    :subject => 'New contact message from ideason.com' )
  end

end
