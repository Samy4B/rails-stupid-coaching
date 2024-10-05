class QuestionsController < ApplicationController
  def ask
    #
  end
  def
    @question = fetch_question
    @answer = answer(@question)
  end

private

def fetch_question
  params[:question]
end

def answer(question)
  if question.downcase == "j'ai une question"
  elsif question.end_with?("?")
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end
