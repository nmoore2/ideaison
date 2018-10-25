class VisitorsController < ApplicationController

  def index
    @portfolios = Portfolio.all
  end

  def about

  end

  def services

  end

  def portfolio
    @portfolios = Portfolio.all
  end

end
