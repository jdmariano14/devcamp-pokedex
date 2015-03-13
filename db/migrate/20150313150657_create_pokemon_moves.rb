class CreatePokemonMoves < ActiveRecord::Migration
  def up
    create_table :pokemon_moves do |t|
      t.integer :pokemon_id
      t.integer :move_id
      t.timestamps null: false
    end
  end

  def down
  	drop_table :pokemon_moves
  end
end
