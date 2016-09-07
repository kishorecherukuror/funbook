class StudentsController < ApplicationController
	def show
		@name = params[:name]
		@age = params[:age]
		@gender = params[:gender]
		@address = params[:address]

		@s = Student.new(:name => @name, :age => @age, :gender => @gender, :address => @address)
		@s.save
	end
	def create
	end
end
