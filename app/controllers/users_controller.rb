class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create

		#Initialize a new student object with form values
		@users = User.new(user_params)

		if @user.save
			flash[:notice] = "User was successfully created!"
			redirect_to students_path
		else
			render :new
		end
	end


	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end

end