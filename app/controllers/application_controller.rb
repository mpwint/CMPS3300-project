class ApplicationController < ActionController::Base
  def home
    render html: "Home"
  end  
end