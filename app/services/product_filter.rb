class ProductFilter
  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :brand_ids, :min_price, :max_price, :sort

  def initialize(option, sort = '')
    @sort       = sort
    return if option.nil?
    @brand_ids  = option[:brand_ids]
    @min_price  = option[:min_price]
    @max_price  = option[:max_price]
  end

  def result
    products = Product.all
    products = products.find_by_brands(brand_ids)         if brand_ids.present? and brand_ids.any? &:present?
    products = products.find_by_min_price(min_price.to_f) if min_price.present?
    products = products.find_by_max_price(max_price.to_f) if max_price.present?
    products = products.order(name: sort.to_sym)          if sort.present?
    products
  end

  def persisted?
    false
  end
end