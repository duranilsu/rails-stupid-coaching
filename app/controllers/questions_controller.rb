class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    if params[:answer].include? "?"
      @answers = @answers.select { |answer| answer.start_with?("Silly question, get dressed and go to work!") }
    elsif params[:answer] == 'I am going to work'
      @answers = @answers.select { |answer| answer.start_with?("Great!")}
    else
      @answers = @answers.select { |answer| answer.start_with?("I don't care, get dressed and go to work!")}
    end
  end
end
