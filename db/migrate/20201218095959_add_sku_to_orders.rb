class AddSkuToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :doll_sku, :string
  end
end
