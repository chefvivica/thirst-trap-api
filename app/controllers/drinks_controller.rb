class DrinksController < ApplicationController

    def index
        drinks = Drink.all

        render json:drinks.to_json(include: [:reviews, :users])
    end

    def show
        drink = Drink.find(params[:id])

        render json:drink
    end


    def update 
        drink = Drink.find(params[:id])
        drink.update(drink_params)
     
    end 

    private 

    def drink_params
        params.require(:drink).permit( :likes)

    end 

end
