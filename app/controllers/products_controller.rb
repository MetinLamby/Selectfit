class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def select
    products = Product.all
    # get the first two elements from the array
    # if clicked on one product, the other one will be deleted from the array
    # get the next product from the array and compare it to the  product that was clicked on

    # count the clicks
    # after 10 clicks, show the product
    # decide whether to buy or to keep selecting
  end
end
