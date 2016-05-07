require 'rails_helper'

describe ProductFilter do
  describe '#result' do
    let!(:ruby)          { create(:brand, name: 'Ruby') }
    let!(:ror)           { create(:product, name: 'ROR', brand: ruby) }

    it 'returns a list of products' do
      products = ProductFilter.new(brand_ids: [ruby.id]).result
      expect(products).to include ror
    end
  end
end