class ProductsController < ApplicationController
  protect_from_forgery except: :filter
  
  def index
    @product_filter = ProductFilter.new(search_params, cookies[:shoe_sort])
    
    @products = @product_filter.result
    @products = @products.paginate(page: params[:page], per_page: 15)
  end

  def filter
    @product_filter = ProductFilter.new(search_params, cookies[:shoe_sort])
    
    @products = @product_filter.result
  end

  protected

  def search_params
    return nil if params[:product_filter].nil?
    
    params[:product_filter].permit(
                                  :min_price,
                                  :max_price,
                                  :brand_ids => []
                                  )
  end
end
