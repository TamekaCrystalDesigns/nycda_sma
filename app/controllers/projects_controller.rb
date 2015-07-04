class ProjectsController < ApplicationController
	before_action :authenticate

	def new
		@project = Project.new
	end

	def create
		binding.pry
	end

	private

	def project_params
		params.require(:project).permit(:name, :student_id)
	end

end