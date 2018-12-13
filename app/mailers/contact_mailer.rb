class ContactMailer < ApplicationMailer
  default from: 'info@ideaison.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_contact_email(contact)
    @contact = contact
    @to = Rails.env.development? ? ["n@nmoore.net"] : ["lauren@ideaison.com", "naomi@ideaison.com"]
    mail( :from => @contact.email, :to => @to,
    :subject => 'New contact message from ideaison.com',
    :bcc => 'nate@nmoore.net')
  end

end
