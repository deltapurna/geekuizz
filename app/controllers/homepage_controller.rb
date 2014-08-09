class HomepageController < ApplicationController
  def index
    @problem = PageQuiz.create_problem
    session[:total_digit] = @problem.total_digit
  end

  def solution
    solution = PageQuiz.new(total_digit: session[:total_digit]).solution
    if params[:solution].to_i == solution
      render json: "Correct!"
    else
      render json: "Wrong!"
    end
  end
end
