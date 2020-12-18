class RemovePriceFromDolls < ActiveRecord::Migration[6.0]
  def change
    remove_column :dolls, :price, :float
  end
end
