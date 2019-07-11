class QuestionsController < ApplicationController
 
  def index
   
  end

  def show
    @questions = Question.all.select {|q| q.activity.activity_name == params[:commit] }
    @chosen_question = @questions.sample
    
  end

  
  def recieve_answer
    @planet = Planet.find(1)
    @question = Question.find_by_answer(params[:solution])
    @activity = @question.activity
    
    byebug
   if params[:solution] == params[:commit]
    
    redirect_to '/success' 
   else
    redirect_to '/failure'
   end
    
  end

  def success

  end

  def failure

  end

end
