class StudentsController < ApplicationController

	def index
		#make activerecord request for all students
		#store the result in cariable called @students

		@students = Student.all

		def show 
			binding.pry
			@student = Student.find_by_id(params[:id])
		end
	end
end