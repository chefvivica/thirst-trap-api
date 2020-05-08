class DrinksController < ApplicationController

    def index
        drinks = Drink.all

        # render json:drinks
        render json:drinks.to_json(include: [:reviews, :users])
    end

    def show
        drink = Drink.find(params[:id])

        render json:drink
    end

end
