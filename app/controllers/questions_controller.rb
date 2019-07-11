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
    
    
   if params[:solution] == params[:commit]
    @success_reward = PlanetMaterial.find_or_create_by(planet_id: @planet.id, material_id: @question.material_id)
    @success_reward.total_units += @activity.base_reward
    @success_reward.save
    
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
