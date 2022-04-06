class AdminController < ApplicationController
  include Auth

  auth only: [:index]

  def index
    @products = Product.all
  end
end
