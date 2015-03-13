class CreateMoves < ActiveRecord::Migration
  def up
    create_table :moves do |t|
      t.string :name
      t.integer :type_id
      t.timestamps null: false
    end
  end

  def down
  	drop_table :moves
  end
end
