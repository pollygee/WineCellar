class AddVarietalToWines < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :varietal, :string
  end
end
