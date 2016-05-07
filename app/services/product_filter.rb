class ProductFilter
  include ActiveModel::Conversion
  extend  ActiveModel::Naming

  attr_accessor :brands, :min_price, :max_price

  def initialize(option)
    return if option.nil?
    @brands     = option[:brands]
    @min_price  = option[:min_price]
    @max_price  = option[:max_price]
  end

  def result
    products = Product.all
    products = products.find_by_brands(brands) if brands.present? and brands.any? &:present?
    products = products.find_by_min_price(min_price.to_f) if min_price.present?
    products = products.find_by_max_price(max_price.to_f) if max_price.present?
    products = products.order(created_at: :desc)
    products
  end

  def persisted?
    false
  end
end