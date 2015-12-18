class SecretNumberController < ApplicationController
  def new
  end

  def show
  	#random number from 0-5
  	@secret_num = rand(5) + 1

  	#user's guess
  	@guess = params[:format].to_i
  	#win is either true or false (boolean)
  	@win = @guess == @secret_num
  	@p = params

  end
end
