require 'httparty'
require 'json'

class ApplicationController < ActionController::Base
 
  def index
    @flight = Flight.new
  end

  def results  	
  end

  def contact  	
  end

  def help  	
  end

  def about  	
  end

  protect_from_forgery with: :exception
  include SessionsHelper

end
