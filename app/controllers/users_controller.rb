class UsersController < ApplicationController
	def new
@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to @user, notice: "Thank you for signing up for Twerpper"
		else
			render 'new'
		end

	end

	def show
		@user = User.find(params[:id])
		@twerp = Twerp.new
	end

end
