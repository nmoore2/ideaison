class Buttercms::BaseController < ActionController::Base
  before_action :set_contact

  layout 'application'

  def set_contact
    @contact = Contact.new
  end

end
