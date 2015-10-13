class RatingsController < ApplicationController
	
	def index
		
	end

	def admin_dashboard
		@users = User.all
		@categories = Category.all
	end
  
  def change_role
  	
  end
end
