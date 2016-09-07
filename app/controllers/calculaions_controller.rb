class CalculaionsController < ApplicationController
  def evenodd
  	@value = params[:value]

  	if @value.to_i % 2 == 0
  		@result = "even number"
  	else
  		@result = "Odd Number"
  	end
  end

  def addition
  	@a = params[:a]
  	@b = params[:b]
  	@c = @a.to_i + @b.to_i
  end
end
