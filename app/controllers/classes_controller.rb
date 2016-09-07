class ClassesController < ApplicationController
	def new
		@a = 10
		@b = 20
		@c = @a + @b
	end
end
