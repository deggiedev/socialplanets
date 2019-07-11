class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    @questions = Question.all
  end

  def show
    @activity = Activity.find(params[:id])
    @questions = Question.all.select {|q| q.id == @activity.id }
    
  end

  
end
