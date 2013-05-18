class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			session[:user_id] = @user.id
			redirect_to "/users/show", :notice => "Signed up!"
		else
			render "new"
		end
	end

	def show
		@user = User.find(session[:user_id])
    	@colleges = College.where("user_id = ?",@user.id)
	end
end
