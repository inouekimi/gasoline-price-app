class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.references :user,           null: false, foreign_key: true
      t.text :text,                 null: false
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
