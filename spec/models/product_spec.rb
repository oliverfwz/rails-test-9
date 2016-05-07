require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'associations' do
    it { is_expected.to belong_to :brand }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :sku }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_numericality_of(:price).is_greater_than_or_equal_to(0) }
    it do
      is_expected.to validate_attachment_content_type(:picture)
        .allowing('image/png', 'image/gif')
        .rejecting('text/plain', 'text/xml')
    end
    it do
      is_expected.to validate_attachment_size(:picture)
        .less_than(5.megabytes)
    end
  end

  describe '#find_by_brands' do
    let!(:nike)         { create(:brand, name: 'Nike') }
    let!(:ruby)         { create(:brand, name: 'Ruby') }
    let!(:eyewear)      { create(:product, name: 'SAFETY EYEWEAR', brand: nike) }
    let!(:rails)        { create(:product, name: 'ROR', brand: ruby) }
    let!(:products)      { create_list(:product, 3)}

    it 'return result' do
      result = Product.find_by_brands([nike.id, ruby.id])

      expect(result.size).to eq 2
      expect(result).to include eyewear
      expect(result).to include rails
    end
  end

  describe "#find_by_min_price" do
    let!(:ruby_product)  { create(:product, name: 'Ruby product', price: 200) }
    let!(:products)      { create_list(:product, 3, price: 100) }

    it "return result" do
      result = Product.find_by_min_price(200)

      expect(result.size).to eq 1
      expect(result).to include ruby_product
    end
  end

  describe "#find_by_max_price" do
    let!(:ruby_product)  { create(:product, name: 'Ruby product', price: 100) }
    let!(:products)      { create_list(:product, 3, price: 500) }

    it "return result" do
      result = Product.find_by_max_price(200)

      expect(result.size).to eq 1
      expect(result).to include ruby_product
    end
  end
end
