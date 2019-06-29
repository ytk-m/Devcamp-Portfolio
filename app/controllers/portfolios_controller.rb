class PortfoliosController < ApplicationController

  def index
    @potrfolio_item = Portfolio.all
  end

end
