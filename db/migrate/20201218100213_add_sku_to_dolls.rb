class AddSkuToDolls < ActiveRecord::Migration[6.0]
  def change
    add_column :dolls, :sku, :string
  end
end
