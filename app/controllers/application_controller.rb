class ApplicationController < ActionController::Base
	 include CanCan::ControllerAdditions
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
	  # binding.pry 
	  if(current_user.has_role? :admin)
	  	dashboard_url 
	  else
	  	ratings_url
	  end
	end
end
