class FruitsController < ApplicationController
    def index
        @fruits = Fruit.all
    end
    
    def show
        @fruit = Fruit.find(params[:id])
    end
    
    def new
    end

    def create
        @fruit = Fruit.new(fruit_params)
        @fruit.save
        redirect_to @fruit
    end

    private
        def fruit_params
            params.require(:fruit) .permit(:id, :name)
        end
end
