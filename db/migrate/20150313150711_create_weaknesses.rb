class CreateWeaknesses < ActiveRecord::Migration
  def up
    create_table :weaknesses, :id => false  do |t|
      t.integer :pokemon_id
      t.integer :type_id
      t.timestamps null: false
    end
  end

  def down
  	drop_table :weaknesses
  end
end
