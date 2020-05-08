class DrinksController < ApplicationController

    def index
        drinks = Drink.all

        render json:drinks
    end

    def show
        drink = Drink.find(params[:id])

        render json:drink
    end

    # def edit
    #     drink = Drink.find(params[:id]) 
    # end 

    def update 
        drink = Drink.find(params[:id])
        drink.update(drink_params)
        # render json:drink
    end 

    private 

    def drink_params
        params.require(:drink).permit( :likes)

    end 

end
