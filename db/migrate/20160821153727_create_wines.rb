class CreateWines < ActiveRecord::Migration[5.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.string :vintage
      t.date :date
      t.date :purchase_date
      t.text :notes
      t.string :country
      t.string :region
      t.float :cost
      t.integer :count
      t.string :color
      t.timestamps
    end
  end
end
