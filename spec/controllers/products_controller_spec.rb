require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  describe '#index' do
    let!(:products) { create_list(:product, 2)}

    it 'gets a list of products' do
      get :index

      expect(assigns(:products).size).to eq products.size
    end
  end
end
