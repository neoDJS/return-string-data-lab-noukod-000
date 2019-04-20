class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def body
    post = Post.find(params[:id])
    render plain: post.description
  end

end
