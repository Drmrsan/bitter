class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
  	
  	if(User.find_by_username(params[:id]))
  		#grab username by 	id
  		@username = params[:id]
  	else
  		#redirect to 404
  		redirect_to root_path, notice: "User not found!"
  	end

  end

  def explore
  end
end
