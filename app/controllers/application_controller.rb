class ApplicationController < ActionController::Base
 
  def index
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
