class StaticPagesController < ApplicationController
  def home
    @catgories = Category.all
    @products = Product.display.sorted_by_price_rating
  end
end
