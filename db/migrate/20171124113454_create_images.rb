class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :alt
      t.string :hint
      t.string :file

      t.timestamps null: false
    end
  end
end
