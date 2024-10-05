class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(question)
    case question.downcase
    when "i am going to work"
      "Great!"
    when ->(q) { q.end_with?("?") }
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
