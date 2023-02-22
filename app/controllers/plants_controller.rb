class PlantsController < ApplicationController

    def index
        plants = Plant.all 
        render json: plants, status: :ok
    end

    def show
        plant = Plant.find(params[:id])
        render json: plant, status: :ok
    end

    def create 
        newplant = Plant.create(newparams)
        render json: newplant, status: :created
    end

    private
    def newparams
        params.permit(:name, :image, :price)
    end

end
