class SessionsController <ApplicationController
	before_action :authenticate, only: [:destroy]
	
	def new

	end

	def create
		binding.pry
		# find user by email address

		@user = User.find_by_email(params[:email])

		if @user && user.authenticate(params[:password])
			session[:user_id] = "Signed in!"
			flash[:notice] = "Signed in!"
			redirect_to students_path

		else
		# if user exists and if user is authenticated, log them in
		# if not, render :new view with flash message
		end

		def destroy
			session[:user_id] = nil
			redirect_to root_path, notice: "Successfully loged out!"
		end
		
	end

end