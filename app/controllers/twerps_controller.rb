class TwerpsController < ApplicationController

	def create
		twerp = Twerp.new(params[:twerp])
		twerp.user_id = current_user.id
	

		flash[:error] = "Your Twerp was over 140 characters" unless twerp.save
		redirect_to root_url

	end

end
