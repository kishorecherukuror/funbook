class MathematicsController < ApplicationController
  def evenodd
  	@number = params[:number].to_i
  end

  def prime
  	@number = params[:number].to_i
  	@count = 0
  	if @number != 0
  		(1..@number).each do |i|
  			if @number % i == 0
  				@count += 1
  			end
  		end
  		if @count == 2
  			@result = "Prime Number"
  		else
  			@result = "Not a Prime Number"
  		end
  	end
  end

  def palidrom
  end
end
