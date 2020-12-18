class CreateAdoptions < ActiveRecord::Migration[6.0]
  def change
    create_table :adoptions do |t|
      t.string :state
      t.string :name
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id
      t.references :user, null: false, foreign_key: true
      t.references :doll, null: false, foreign_key: true

      t.timestamps
    end
  end
end
