class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    product = product.create(product_params)
    product.save
    redirect_to products_path
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

  def inventory
    product = Product.find(params[:id])
    render plain: !!product.inventory
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :description, :inventory, :price)
  end

end
