class StaticPagesController < ApplicationController
  def home
    @catgories = Category.all
    @products = Product.display.take 9
  end
end
