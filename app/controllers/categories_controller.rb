class CategoriesController < ApplicationController
  load_and_authorize_resource
  def index
  end

  def show
    @products = @category.products.page(params[:page]).per 10
  end
end
