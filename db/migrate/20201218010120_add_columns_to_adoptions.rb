class AddColumnsToAdoptions < ActiveRecord::Migration[6.0]
  def change
    add_column :adoptions, :amount, :monetize
    add_column :adoptions, :checkout_session_id, :string
  end
end
