class HomeController < ApplicationController
  def index
  	@starters = Starter.all
  end
end
