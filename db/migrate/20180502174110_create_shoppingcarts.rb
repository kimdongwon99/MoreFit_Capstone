class CreateShoppingcarts < ActiveRecord::Migration[5.0]
  def change
    create_table :shoppingcarts do |t|
      t.string :zzim_title
      t.integer :zzim_price
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
