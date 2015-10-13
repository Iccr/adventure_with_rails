class RatingsController < ApplicationController
	
	def index
		
	end

	def admin_dashboard
		@users = User.all
		@categories = Category.all
	end
  
  def edit # change_role is same as edit may be i sud have gone with convention
  	@user = User.find(params[:id])
  end
end
