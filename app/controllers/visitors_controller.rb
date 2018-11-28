class VisitorsController < ApplicationController
  require "uri"
  require "net/http"
  require "net/https"
  require 'json'
  require 'openssl'
  require 'httparty'



  def index
    @portfolios = Portfolio.all
    @services = Service.all
    @testimonials = Testimonial.all
  end

  def about
    @team = Team.all
  end

  def blog
    @code = params[:code]
    params = {'grant_type' => 'authorization_code', 'code' => @code, 'redirect_uri' => 'http://localhost:3000/blog', 'client_id' => '78t99ayw8dgyz1', 'client_secret' => '2NgT4jBSYOI4F1kT'
}
     if @code.present?
      # post to LinkedIn to get access_token
      x = Net::HTTP.post_form(URI.parse('https://www.linkedin.com/oauth/v2/accessToken'), params)
      puts x.body
      data = JSON.parse(x.body)
      @access_token = data["access_token"]
      puts 'Access token= ' + @access_token

      url = 'https://api.linkedin.com/v2/originalArticles/battling-imposter-syndrom-lauren-kashuk'
      headers = {
        authorization: 'Bearer ' + @access_token
      }

      response = HTTParty.get(url, headers: headers)
      puts response.body

    end
  end

  def services
    @services = Service.all
  end

  def portfolio
    @portfolios = Portfolio.all
    @services = Service.all
  end

end
