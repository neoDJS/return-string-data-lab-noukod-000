class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    @product = product.create(product_params)
    @product.save
    redirect_to products_path(@product)
  end

  def body
    product = Product.find(params[:id])
    render plain: product.description
  end

  def inventory
    product = Product.find(params[:id])
    render plain: !!product.inventory
  end

end
