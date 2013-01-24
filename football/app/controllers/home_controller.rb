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
    file_content = open(url) { |f| f.read }
    
    # file_content read the xml with ruby
    
    @weather = WeatherModel.new()
    @wearther.low = file_content['content']['item']['yweather']
    @weather.high = ...
    ...
    @weather.save
  end
end
