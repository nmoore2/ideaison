class ApplicationController < ActionController::Base
  before_action :set_contact
  
  def set_contact
    @contact = Contact.new
  end

end
