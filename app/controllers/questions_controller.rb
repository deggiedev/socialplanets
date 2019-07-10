class QuestionsController < ApplicationController

  def index
   
    @questions = Question.all.select {|q| q.activity.activity_name == params[:commit] }
    
  end


end
