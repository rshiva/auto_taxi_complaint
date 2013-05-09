class UsersController < ApplicationController

def new
		@user=User.new
		respond_to do |format|
	    format.html # new.html.erb
  	  format.json { render json: @user }
  	end
	end

	def create
		@user=User.new(params[:user])
			if @user.save
				redirect_to root_path, notice: "Successfully created complaint."
			else
				render :new
			end
	end



end
