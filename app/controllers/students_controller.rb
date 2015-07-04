class StudentsController < ApplicationController

	def index
		#make activerecord request for all students
		#store the result in cariable called @students
		@students = Student.all
	end
	
	def show
		@student = Student.find_by_id(params[:id])
	end


end