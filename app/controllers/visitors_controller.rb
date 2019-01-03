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
