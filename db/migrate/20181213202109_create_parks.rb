class CreateParks < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.string :name
      t.integer :state_id
      t.integer :size
      t.integer :ticket_cost

      t.timestamps
    end
  end
end
