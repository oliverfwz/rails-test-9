class Product < ActiveRecord::Base
  belongs_to :brand

  validates :name,   presence: true
  validates :sku,    presence: true
  validates :price,  presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }, allow_blank: true

  has_attached_file :picture,
    styles: { thumb: '260x260>' },
    default_url: "product/missing.png"
  validates_attachment :picture,
    content_type: {content_type: /\Aimage\/.*\Z/},
    size: { in: 0..5.megabytes, message: 'Photo size too large. Please limit to 5 mbs.' }
end