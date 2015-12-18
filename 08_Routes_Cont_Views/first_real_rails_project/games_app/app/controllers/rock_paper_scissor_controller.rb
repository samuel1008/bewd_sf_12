class RockPaperScissorController < ApplicationController
  def new
  	@rsp = ["Rock", "Paper" , "Scissor"]
  end

  def show

  	results = {rock: {rock: "Tie", scissor: "Win", paper: "Lose"},
  		paper: {paper: "Tie", scissor: "Lose", rock: "Win"},
  		scissor: {scissor: "Tie", paper: "Win", rock: "Lose"  }}
  			
  	@p = params
  	@user_guess = params[:format]
  	@throw = ["Rock", "Paper", "Scissor"].rand
  	@result = results[@user_guess][@throw]
  	# @rules = {rock: :scissor, scissor: :paper, paper: :rock}
  	# @tie = {rock: :rock, paper: :paper, scirssor: :scissor}
  	
  		

  end
end