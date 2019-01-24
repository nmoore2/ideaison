class VisitorsController < ApplicationController
  require "uri"
  require "net/http"
  require 'json'
  require 'openssl'
  before_action :authenticate, only: :portfolio_protected


  def index
    @portfolios = Portfolio.all
    @services = Service.all
    @testimonials = Testimonial.all
  end

  def about
    @team = Team.all
  end

  def blog

  end

  def blog_detail

=======
    linkedin_api_key = "78t99ayw8dgyz1"
    secret_key = "2NgT4jBSYOI4F1kT"


#     @code = params[:code]
#     params = {'grant_type' => 'authorization_code', 'code' => @code, 'redirect_uri' => 'http://localhost:3000/blog', 'client_id' => '78t99ayw8dgyz1', 'client_secret' => '2NgT4jBSYOI4F1kT'
# }
#      if @code.present?
#       # post to LinkedIn to get access_token
#       x = Net::HTTP.post_form(URI.parse('https://www.linkedin.com/oauth/v2/accessToken'), params)
#       puts x.body
#       data = JSON.parse(x.body)
#       @access_token = data["access_token"]
#       puts 'Access token= ' + @access_token
#
#       url = 'https://api.linkedin.com/v2/originalArticles/battling-imposter-syndrom-lauren-kashuk'
#       headers = {
#         authorization: 'Bearer ' + @access_token
#       }
#
#       response = HTTParty.get(url, headers: headers)
#       puts response.body

    end
>>>>>>> Stashed changes
  end

  def services
    @services = Service.all
    @testimonials = Testimonial.all
  end

  def portfolio
    @portfolios = Portfolio.all
  end

  def portfolio_protected
    @portfolios = Portfolio.all
  end

  private

  def authenticate
   authenticate_or_request_with_http_basic('Administration') do |username, password|
     username == 'ideaison' && password == 'portfolio'
   end
  end

end
