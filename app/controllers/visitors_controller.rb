class VisitorsController < ApplicationController

  def index
    @portfolios = Portfolio.all
    @services = Service.all
  end

  def about

  end

  def services
    @services = Service.all
  end

  def portfolio
    @portfolios = Portfolio.all
    @services = Service.all
  end

end
