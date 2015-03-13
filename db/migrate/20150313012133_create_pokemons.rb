class CreatePokemons < ActiveRecord::Migration
  def up
    create_table :pokemons do |t|
      t.string :name
      t.integer :type_id
      
      t.timestamps null: false
    end
  end

  def down
  	drop_table :pokemons
  end
end
