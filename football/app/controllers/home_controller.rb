class HomeController < ApplicationController
  def index
  end

  def login
  end

  def register
  end

  def about
  end

  def contact
  end
  
  def scores
    woeid = (params[:woeid])? params[:woeid] : "";
    url = "http://weather.yahooapis.com/forecastrss?w=" + woeid
    
    require 'open-uri'
    @scores = open(url) { |f| f.read }
    
  end
end
