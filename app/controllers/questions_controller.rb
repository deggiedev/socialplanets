class QuestionsController < ApplicationController

  def index
   
  end

  def show
    @questions = Question.all.select {|q| q.activity.activity_name == params[:commit] }
    @chosen_question = @questions.sample
  end

  def recieve_answer
    byebug
    user_answer = params[:desision]
    
    if user_answer == @chosen_question.answer
    end
  end

end
