require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe '#index' do
    let!(:products) { create_list(:product, 2)}

    it 'gets a list of products' do
      get :index

      expect(assigns(:products).size).to eq products.size
    end
  end

  describe "#filter" do
    def do_request
      get :filter, product_filter: search_params, format: :js
    end

    let!(:products)      { create_list(:product, 2)}
    let!(:ruby)          { create(:brand, name: 'Ruby') }
    let!(:ror)           { create(:product, name: 'ROR', brand: ruby) }
    let!(:search_params) { { :brands => [ruby.id] } }

    it 'return result' do
      do_request

      expect(assigns(:products).size).to eq 1
      expect(assigns(:products)).to include ror
    end
  end
end
