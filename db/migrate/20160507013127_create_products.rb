class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string     :name
      t.string     :sku
      t.float      :price
      t.attachment :picture
      t.belongs_to :brand, index: true

      t.timestamps
    end
  end
end
