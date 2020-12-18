class AddPriceToDolls < ActiveRecord::Migration[6.0]
  def change
    add_monetize :dolls, :price, currency: { present: false }
  end
end
