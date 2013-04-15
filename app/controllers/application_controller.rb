class ApplicationController < ActionController::Base
  protect_from_forgery

	def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
end
