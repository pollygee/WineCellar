class AddDetailstoWines < ActiveRecord::Migration[5.0]
  def change
    add_column :wines, :rank, :integer
    add_column :wines, :link, :string
  end
end
