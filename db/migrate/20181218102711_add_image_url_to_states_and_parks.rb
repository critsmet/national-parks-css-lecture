class AddImageUrlToStatesAndParks < ActiveRecord::Migration[5.2]
  def change
    add_column :states, :image_url, :string
    add_column :parks, :image_url, :string
  end
end
