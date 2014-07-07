require 'open-uri'
require 'json'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def search
  end
  
  def result
    search = params['search'].gsub(" ", "")
    url = "http://api.openweathermap.org/data/2.5/weather?q=#{ search }"
    result = open(url).read
    @parsed_result = JSON.parse(result)
  end
  
  
end
