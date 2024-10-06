class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[ show edit update destroy]

  def index
    @q = Recipe.ransack(params[:q])
    @pagy, @recipes = pagy(@q.result(distinct: true), limit: 5)
  end

  def show; end

  def new
    @recipe = Recipe.new
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.new recipe_params
    if @recipe.save
      redirect_to @recipe
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @recipe.update recipe_params
      flash[:success] = "Recipe updated"
      redirect_to @recipe
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_url, status: :see_other
  end

  private

  def set_recipe
    @recipe = Recipe.find params[:id]
  end

  def recipe_params
    params.require(:recipe).permit(
      :title,
      :description,
      ingredients_attributes: [
        :id,
        :name,
        :_destroy,
        :quantity
      ]
    )
  end
end
