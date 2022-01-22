require 'fatsecret'

class MealsController < ApplicationController
  def summary
    FatSecret.init('9f99ea26f4f44f1ab8ec88b6e5a1bb68', '2f5e533c27fe48e28342043db649df05')
    @food = FatSecret.search_food('milk')
    @info = FatSecret.food(800)
  end

  def home
  end
end
