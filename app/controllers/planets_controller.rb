class PlanetsController < ApplicationController

    
    def index 
        @planets = Planet.all
    end

    def show 
        @planet = Planet.find(params[:id])
    end

    def new 
        @planet = Planet.new(:stage => 1, :high_score => 0) 
    end

    def create 
        @planet = Planet.create(planet_params)
        redirect_to planet_path(@planet)
    end

    private

    def planet_params
        params.require(:planet).permit(:planet_name, :stage, :high_score, :user_id)
      end


end
