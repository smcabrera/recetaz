class RecipeIngredientsController < ApplicationController
  before_action :set_recipe_ingredient, only: [:destroy]

  def create
    session[:return_to] ||= request.referer
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_ingredient = @recipe.recipe_ingredients.build(recipe_ingredient_params)
    @recipe_ingredient.save

    redirect_to session.delete(:return_to)
  end

  def destroy
    @recipe = @recipe_ingredient.recipe
    @recipe_ingredient.destroy

    respond_to do |format|
      format.html
      format.js
    end
  end

  def update

    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def set_recipe_ingredient
    @recipe_ingredient = RecipeIngredient.find(params[:id])
  end

  def recipe_ingredient_params
    params.require(:recipe_ingredient).permit(:ingredient_id, :ingredient_amount)
  end
end
