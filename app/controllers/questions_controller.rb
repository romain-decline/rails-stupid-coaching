class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:question]
    # Si le message est I am going to work, le coach répondra Great!.
    if @question == "I am going to work"
      p @answer = "Great"
    # Si le message contient un point d’interrogation ? à la fin, le coach répondra Silly question, get dressed and go to work!.
    elsif @question.end_with?("?")
      p @answer = "Silly question, get dressed and go to work!"
    # Sinon, le coach répondra I don't care, get dressed and go to work!.
    else
      p @answer = "I don't care, get dressed and go to work!"
    end
  end
end
