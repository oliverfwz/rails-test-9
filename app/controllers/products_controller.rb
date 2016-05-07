class ProductsController < ApplicationController
  protect_from_forgery except: :filter
  
  def index
    @products = Product.all
  end

  def filter
    @product_filter = ProductFilter.new(search_params)
    
    @products = @product_filter.result
  end

  protected

  def search_params
    return nil if params[:product_filter].nil?
    
    params[:product_filter].permit(
                                  :min_price,
                                  :max_price,
                                  :brands => []
                                  )
  end
end
