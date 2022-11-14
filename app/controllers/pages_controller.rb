class PagesController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    if @ask == "I am going to work"
      @coachAnswer = "Great!"
    elsif @ask.split[-1] == "?"
      @coachAnswer = "Silly question, get dressed and go to work!"
    else
      @coachAnswer = "I don't care, get dressed and go to work!"
    end
  end
end
