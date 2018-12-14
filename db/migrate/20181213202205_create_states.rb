class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name
      t.string :slogan
      t.integer :population

      t.timestamps
    end
  end
end
